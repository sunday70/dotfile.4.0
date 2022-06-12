# brew 提醒关闭
export HOMEBREW_NO_INSTALL_CLEANUP=TRUE

# alias
alias icloud="cd /Users/zard/Library/Mobile\ Documents/com~apple~CloudDocs/"
alias temp="./temp_sensor | ./monitor.py"
alias la="ls -la"
alias co="cowsay"
alias cm="cmatrix"
alias c7="chmod 777"
alias cx="chmod +x"
alias is="istats"
alias im="imgcat"
alias v="nvim"
alias c="clear"
alias q="exit"
alias ra="ranger"
alias ne="neofetch"
alias f="fzf"
alias h="htop"
alias hh="sudo htop"
alias n="nano"
alias o="open"
alias oa="open -a"
alias z="7z"
alias t="trans"
alias tsh="trans :zh -shell -brief"
alias tzh="trans :zh"
alias ten="trans :en"
alias tja="trans :ja"
alias tz="trans :zh -brief"
alias te="trans :en -brief"
alias tj="trans :ja -brief"
alias ca="caffeinate"
alias d="diskutil"
alias ic="kitty +kitten icat"
alias w3="W3M_IMG2SIXEL=img2sixel w3m -sixel -o display_image=1"

# mac ruby 更新包管理器
eval "$(rbenv init - zsh)"

# 默认编辑部更改
export EDITOR=nvim
export VISUAL="$EDITOR"

# fzf 支持 配置
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPTS="--height 40% --layout=reverse --preview '(highlight -O ansi {} || cat {}) 2> /dev/null | head -500'"

#java 支持
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export CPPFLAGS="-I/opt/homebrew/opt/openjdk/include"
