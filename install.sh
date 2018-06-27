#! /bin/bash -eu

tempfile=/tmp/dotfiles.zip
workspace=/tmp/dotfiles

echo "Download zipped installer"
curl -LSfs -o ${tempfile} https://github.com/yhirano55/dotfiles/archive/master.zip

echo "Unzip installer into workspace"
unzip -oq ${tempfile} -d ${workspace}

echo "Move to repository root path"
pushd ${workspace}/dotfiles-master > /dev/null

echo "Install command-line-tools"
if [[ ! -d /usr/include ]]; then
  PLACEHOLDER=/tmp/.com.apple.dt.CommandLineTools.installondemand.in-progress
  touch $PLACEHOLDER
  PROD=$(softwareupdate -l | grep "\*.*Command Line" | head -n 1 | awk -F"*" '{print $2}' | sed -e 's/^ *//' | tr -d '\n')
  softwareupdate -i "${PROD}"
  [[ -f $PLACEHOLDER ]] && rm $PLACEHOLDER
fi

echo "Install homebrew"
which brew > /dev/null
if [ "$?" -ne 0 ]; then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "Install serverkit and its dependencies"
which bundle > /dev/null || gem install bundler
bundle install --path vendor/bundler -j4 > /dev/null

echo "Run installer"
bundle exec serverkit apply recipe.yml.erb --variables=variables.yml

echo "Move to original path"
popd > /dev/null

echo "Cleanup"
rm -rf ${tempfile} ${workspace}

exit 0
