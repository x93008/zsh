source ~/antigen.zsh

# 加载oh-my-zsh库
antigen use oh-my-zsh

# 加载原版oh-my-zsh中的功能(robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found

# 语法高亮功能
antigen bundle zsh-users/zsh-syntax-highlighting

# 代码提示功能
antigen bundle zsh-users/zsh-autosuggestions

# 自动补全功能
#antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions

# 加载主题
antigen theme robbyrussell

# 保存更改
antigen apply

# vim为默认编辑器
export EDITOR=vim

# 将tmux配色方案改为screen-256color-bce
alias tmux="TERM=screen-256color-bce tmux"

# 将$HOME/tran作为PATH
export PATH="$PATH:/home/lxx/bin"

# 禁用Ctrl+S
stty ixany

# 使用gi 加c++ Cmake 等，自动生成.gitignore
function gi() { curl -sLw "\n" https://www.gitignore.io/api/$@ ;}

# 加载接收端的环境变量
export LD_LIBRARY_PATH="."
export HOTSPOT_SSID="SS_Octopus"
export HOTSPOT_PASSWORD="1234abcd"
export LIBVA_DRIVER_NAME=iHD

# TMUX 自动开启
#if which tmux >/dev/null 2>&1; then
#   #if not inside a tmux session, and if no session is started, start a new session
#   test -z "$TMUX" && (tmux attach || tmux new-session)
#   fi
