# brew 提醒关闭
export HOMEBREW_NO_INSTALL_CLEANUP=TRUE

# alias
alias z='7z'
alias f='fzf'
alias n='nano'
alias v='nvim'
alias m='neomutt'
alias q='exit'
alias c='clear'
alias ca='caffeinate'
alias ic='kitty +kitten icat'
alias la='ls -a'
alias cx='chmod +x'
alias c7='chmod 777'
alias co='cowsay'
alias cm='cmatrix'
alias ra='ranger'
alias ne='neofetch'
alias pf='pfetch'
alias t='trans'
alias tz='trans :zh'
alias te='trans :en'
alias tj='trans :ja'
alias tsh='trans :zh -shell -brief'
alias tzh='trans :zh -brief'
alias ten='trans :en -brief'
alias tja='trans :ja -brief'

# mac
alias h='sudo htop'
alias d='diskutil'
alias o='open'
alias oa='open -a'
alias is='istats'
alias icloud='cd /Users/zard/Library/Mobile\ Documents/com~apple~CloudDocs/'
alias .te='./temp_sensor | ./monitor.py'

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

eval "$(starship init zsh)"
