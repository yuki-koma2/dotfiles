# ‘eval “source "/opt/homebrew/Cellar/anyenv/1.1.4/libexec/../completions/anyenv.zsh" anyenv() { typeset command command="$1" if [ "$#" -gt 0 ]; then shift fi command anyenv "$command" "$@" }”‘

# path
eval "$(anyenv init -)"
eval "$(starship init zsh)"

# terminal settings
#PS1_COLOR_BEGIN="\[\e[1;36m\]"
#PS1_COLOR_END="\[\e[m\]"
#PS1_HOST_NAME="MacBookPro-Lion"
#export PS1="${PS1_COLOR_BEGIN}[\u@\${PS1_HOST_NAME} \W]${PS1_COLOR_END}\\$ "


# 履歴ファイルの保存先
export HISTFILE=${HOME}/.zsh_history
# メモリに保存される履歴の件数
export HISTSIZE=1000
# 履歴ファイルに保存される履歴の件数
export SAVEHIST=100000
# 重複を記録しない
setopt hist_ignore_dups
# ヒストリに追加されるコマンド行が古いものと同じなら古いものを削除
setopt hist_ignore_all_dups
# 余分な空白は詰めて記録
setopt hist_reduce_blanks


#alias list
alias l="ls -la"
alias ll="ls -l"

#Git
alias gitch="git checkout"
alias gitnew="git checkout -b"
alias makepr="git commit --allow-empty -m 'make pr'"
alias gitmaster="git checkout master"
alias gitprune="git fetch --prune"

#docker mysql
alias mysqlup="docker run --name mysql -e MYSQL_ROOT_PASSWORD=mysql -d -p 3307:3306 mysql"
alias mydc="mycli -h 127.0.0.1 --port 3307 -u root -pmysql"

#docker
alias dcd='docker-compose down'
alias dcs='docker-compose stop'
alias dcu='docker-compose up'
alias dcb='docker-compose up --build'

# command
alias a='alias'
alias clip='pbcopy'
#alias re='source ~/.zshrc'
alias re='exec $SHELL -l'
alias v='vim'
alias vz='vim ~/.zshrc'
