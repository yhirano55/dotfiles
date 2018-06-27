## autoload
fpath=("$HOME/.zsh/functions" $fpath)
autoload -Uz colors
autoload -Uz add-zsh-hook
autoload -Uz history-search-end
autoload -Uz my_rprompt
autoload -Uz my_copyline
autoload -Uz my_tmux

## zsh-completions
fpath=(/usr/local/share/zsh-completions $fpath)
autoload -Uz compinit

## setopt
setopt AUTO_MENU              # タブキー連打で自動的にメニュー補完
setopt AUTO_CD                # ディレクトリ名だけでcdする
setopt AUTO_PUSHD             # cd したら自動的にpushdする
setopt EXTENDED_HISTORY       # 履歴ファイルに時刻を記録
setopt HIST_EXPAND            # 補完時にヒストリを自動的に展開する
setopt APPEND_HISTORY         # ヒストリファイルを上書きするのではなく、追加するようにする
setopt HIST_EXPIRE_DUPS_FIRST # 履歴がいっぱいの時は最も古いものを先ず削除
setopt HIST_IGNORE_ALL_DUPS   # 同じコマンドをヒストリに残さない
setopt HIST_IGNORE_SPACE      # スペースから始まるコマンド行はヒストリに残さない
setopt HIST_REDUCE_BLANKS     # ヒストリに保存するときに余分なスペースを削除する
setopt TRANSIENT_RPROMPT      # 右プロンプトに入力がきたら消す
setopt PRINT_EIGHT_BIT        # 日本語ファイル名を表示可能にする
setopt NO_BEEP                # beep を無効にする
setopt NO_FLOW_CONTROL        # フローコントロールを無効にする
setopt INTERACTIVE_COMMENTS   # '#' 以降をコメントとして扱う
setopt PUSHD_IGNORE_DUPS      # 重複したディレクトリを追加しない
setopt SHARE_HISTORY          # 同時に起動したzshの間でヒストリを共有する
unsetopt AUTO_REMOVE_SLASH    # 補完末尾の/を取る
unsetopt IGNORE_EOF           # ^Dでログアウトしないようにする

## variables
export LANG=ja_JP.UTF-8
export TERM=xterm-256color
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
export PATH="$HOME/bin:$PATH"
export EDITOR=vim
export CLICOLOR=YES

KEYTIMEOUT=1
HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000

## keybind
bindkey -e
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end
if zle -la | grep -q '^history-incremental-pattern-search'; then
  bindkey '^R' history-incremental-pattern-search-backward
  bindkey '^S' history-incremental-pattern-search-forward
fi

## execution
colors
compinit -u
my_rprompt
my_copyline
my_tmux

## prompt
PROMPT="%{${fg[green]}%}%# %{${reset_color}%}"

## history
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' max-errors 50
zstyle ':completion:*' list-colors ''
zstyle :compinstall filename "$HOME/.zshrc"

## alias
alias la='ls -A'
alias ll='ls -1'
alias cp='cp -i'
alias mv='mv -i'
alias vi='vim'
alias mkdir='mkdir -p'
alias rm='trash'
alias sudo='sudo '
alias b='bundle exec'
alias g='hub'
alias d='git diff'
alias s='git status --short'
alias gl='git log --no-merges --date=short --pretty="format:%C(yellow)%h %C(green)%cd %C(blue)%an%C(red)%d %C(reset)%s"'
alias gv='git commit -v'
alias pr='hub browse -- pull/$(git rev-parse --abbrev-ref HEAD)'
alias t='tmux'
alias ta='tmux attach'
alias td='tmux detach'
alias update-dotfiles='pushd ~/dotfiles && git pull origin master && bundle exec serverkit apply recipe.yml.erb --variables=variables.yml && popd'
alias d='docker'
alias dl='docker ps -l -q'

## function
p() { peco | while read LINE; do $@ $LINE; done }

## Ruby
export PATH="$HOME/.rbenv/bin:$PATH"
if which rbenv > /dev/null; then
  eval "$(rbenv init -)"
fi

## Nodebrew
export PATH="$HOME/.nodebrew/current/bin:$PATH"

## Heroku
export PATH="/usr/local/heroku/bin:$PATH"

## Postgres
export PGDATA=/usr/local/var/postgres

## direnv
eval "$(direnv hook zsh)"

## z
. `brew --prefix`/etc/profile.d/z.sh

## local
[ -f ~/.zshrc.local ] && source ~/.zshrc.local

## td-agent
export PATH="$PATH:/opt/td-agent/usr/bin:/opt/td-agent/usr/sbin:/opt/td-agent/embedded/bin"

## java
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`

# === cool-peco init ===
FPATH="$FPATH:$HOME/go/src/github.com/ryoppy/cool-peco"
autoload -Uz cool-peco
cool-peco

bindkey '^r' cool-peco-history # ctrl+r
bindkey '^h' cool-peco-ssh
bindkey '^p' cool-peco-ps

alias ff=cool-peco-filename-search
alias gbb=cool-peco-git-checkout
alias gll=cool-peco-git-log
alias ta=cool-peco-tmux-session
alias cg=cool-peco-ghq
# ======================

# The next line updates PATH for the Google Cloud SDK.
if [ -f '~/google-cloud-sdk/path.zsh.inc' ]; then source '~/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '~/google-cloud-sdk/completion.zsh.inc' ]; then source '~/google-cloud-sdk/completion.zsh.inc'; fi

autoload -U +X bashcompinit && bashcompinit
