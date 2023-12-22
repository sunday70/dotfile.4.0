# Start configuration added by Zim install {{{
#
# User configuration sourced by interactive shells
#

# -----------------
# Zsh configuration
# -----------------

#
# History
#

# Remove older command from the history if a duplicate is to be added.
setopt HIST_IGNORE_ALL_DUPS

#
# Input/output
#

# Set editor default keymap to emacs (`-e`) or vi (`-v`)
bindkey -e

# Prompt for spelling correction of commands.
#setopt CORRECT

# Customize spelling correction prompt.
#SPROMPT='zsh: correct %F{red}%R%f to %F{green}%r%f [nyae]? '

# Remove path separator from WORDCHARS.
WORDCHARS=${WORDCHARS//[\/]}

# -----------------
# Zim configuration
# -----------------

# Use degit instead of git as the default tool to install and update modules.
#zstyle ':zim:zmodule' use 'degit'

# --------------------
# Module configuration
# --------------------

#
# git
#

# Set a custom prefix for the generated aliases. The default prefix is 'G'.
#zstyle ':zim:git' aliases-prefix 'g'

#
# input
#

# Append `../` to your input for each `.` you type after an initial `..`
#zstyle ':zim:input' double-dot-expand yes

#
# termtitle
#

# Set a custom terminal title format using prompt expansion escape sequences.
# See http://zsh.sourceforge.net/Doc/Release/Prompt-Expansion.html#Simple-Prompt-Escapes
# If none is provided, the default '%n@%m: %~' is used.
#zstyle ':zim:termtitle' format '%1~'

#
# zsh-autosuggestions
#

# Disable automatic widget re-binding on each precmd. This can be set when
# zsh-users/zsh-autosuggestions is the last module in your ~/.zimrc.
ZSH_AUTOSUGGEST_MANUAL_REBIND=1

# Customize the style that the suggestions are shown with.
# See https://github.com/zsh-users/zsh-autosuggestions/blob/master/README.md#suggestion-highlight-style
#ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=242'

#
# zsh-syntax-highlighting
#

# Set what highlighters will be used.
# See https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/docs/highlighters.md
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)

# Customize the main highlighter styles.
# See https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/docs/highlighters/main.md#how-to-tweak-it
#typeset -A ZSH_HIGHLIGHT_STYLES
#ZSH_HIGHLIGHT_STYLES[comment]='fg=242'

# ------------------
# Initialize modules
# ------------------

ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim
# Download zimfw plugin manager if missing.
if [[ ! -e ${ZIM_HOME}/zimfw.zsh ]]; then
  if (( ${+commands[curl]} )); then
    curl -fsSL --create-dirs -o ${ZIM_HOME}/zimfw.zsh \
        https://github.com/zimfw/zimfw/releases/latest/download/zimfw.zsh
  else
    mkdir -p ${ZIM_HOME} && wget -nv -O ${ZIM_HOME}/zimfw.zsh \
        https://github.com/zimfw/zimfw/releases/latest/download/zimfw.zsh
  fi
fi
# Install missing modules, and update ${ZIM_HOME}/init.zsh if missing or outdated.
if [[ ! ${ZIM_HOME}/init.zsh -nt ${ZDOTDIR:-${HOME}}/.zimrc ]]; then
  source ${ZIM_HOME}/zimfw.zsh init -q
fi
# Initialize modules.
source ${ZIM_HOME}/init.zsh

# ------------------------------
# Post-init module configuration
# ------------------------------

#
# zsh-history-substring-search
#

zmodload -F zsh/terminfo +p:terminfo
# Bind ^[[A/^[[B manually so up/down works both before and after zle-line-init
for key ('^[[A' '^P' ${terminfo[kcuu1]}) bindkey ${key} history-substring-search-up
for key ('^[[B' '^N' ${terminfo[kcud1]}) bindkey ${key} history-substring-search-down
for key ('k') bindkey -M vicmd ${key} history-substring-search-up
for key ('j') bindkey -M vicmd ${key} history-substring-search-down
unset key
# }}} End configuration added by Zim install

# brew 提醒关闭
export HOMEBREW_NO_INSTALL_CLEANUP=TRUE

# ------------------------------------------ alias ++++++++++++++++++++++++++++++++++++++++++
alias z='7za'
alias f='fzf'
alias v='nvim'
alias e='emacs'
alias m='neomutt'
alias q='exit'
alias c='clear'
alias la='ls -a'
alias ca='caffeinate'
alias ic='kitty +kitten icat'
alias cx='chmod +x'
alias c7='chmod 777'
alias co='cowsay'
alias cm='cmatrix'
alias ra='joshuto'
alias ne='neofetch'
alias pf='pfetch'
# google
alias t='trans'
alias tzh='trans :zh'
alias ten='trans :en'
alias tja='trans :ja'
alias tesh='trans :en -shell -brief'
alias tzsh='trans :zh -shell -brief'
alias tjsh='trans :ja -shell -brief'
alias tz='trans :zh -brief'
alias te='trans :en -brief'
alias tj='trans :ja -brief'
# Bing
# alias t='trans -brief -e bing'
# alias tzh='trans -brief -e bing :zh'
# alias ten='trans -brief -e bing :en'
# alias tja='trans -brief -e bing :ja'
# alias tesh='trans -brief -e bing :zh -shell -brief'
# alias tzsh='trans -brief -e bing :en -shell -brief'
# alias tjsh='trans -brief -e bing :ja -shell -brief'
# alias tz='trans -brief -e bing :zh -brief'
# alias te='trans -brief -e bing :en -brief'
# alias tj='trans -brief -e bing :ja -brief'
# mac
# alias h='sudo htop'
alias h='htop'
alias d='dotnet'
alias o='open'
alias oa='open -a'
alias is='istats'
alias icloud='cd /Users/zard/Library/Mobile\ Documents/com~apple~CloudDocs/'
alias .te='/Users/zard/Documents/temp/./temp_sensor | /Users/zard/Documents/temp/./monitor.py'
alias battery='ioreg -rn AppleSmartBattery | grep -i capacity'
alias jg='~/Documents/jetbra/scripts/install.sh'
alias rewm='yabai --restart-service && skhd --restart-service'
alias upbrew='/Users/zard/Documents/shell-script/update.sh'
alias startMysql='brew services start mysql'
alias stopMysql='brew services stop mysql'
alias help_me='/Users/zard/Documents/shell-script/help_lock.sh'
alias help_e='/Users/zard/Documents/shell-script/help.sh'
alias mysql_dump='mysqldump -uroot -pOhMyGod12138omg.'  #示例: mysqldump -uroot -pOhMyGod12138omg. School_may09 > ~/Desktop/new02.sql
alias c_thf='mkdir {dao,domain,service,utils,controller}'  # creat java 三层架构文件夹 框架
alias c_th='mkdir -p {com/zh/dao,com/zh/domain,com/zh/service,com/zh/utils,com/zh/controller}'  # creat java 三层架构文件夹
alias c_st='sh ~/Documents/shell-script/mkdir_statics.sh'  # creat js, add jquery
alias c_jq='mkdir js && cp -rf /Users/zard/Documents/jar包/js/jquery.min.js ./js'  # creat js, add jquery
alias c_lib='~/Documents/shell-script/add_lib.sh'  # java添加库
alias echo_mysql_pwd='~/Documents/shell-script/echo_mysql_password.sh'  # 输出MySQL Root密码
alias reset_navicat='~/Documents/shell-script/reset_navicat_52.sh'    # 重置Navicat 试用
alias echo_word='echo constant"\n"controller"\n"applicationContext"\n"resources | lolcat'

# starship 提示
eval "$(starship init zsh)"

# mac ruby 更新包管理器
eval "$(rbenv init - zsh)"

# 默认编辑部更改
export EDITOR=nvim
export VISUAL="$EDITOR"

# curl 支持
export PATH="/opt/homebrew/opt/curl/bin:$PATH"

# export PATH="/usr/local/share/dotnet/bin:$PATH"
export PATH="/opt/homebrew/bin/dotnet/bin:$PATH"

# 其他软件查找可用
# export DOTNET_ROOT="/opt/homebrew/opt/dotnet/libexec"

# ntfs-volume
# alias live='sudo umount /Volumes/UNTITLED'
# alias love='sudo mount -t ntfs -o rw,auto,nobrowse /dev/disk3s1 ~/ntfs-volume'

# fzf 支持
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export MONO_GAC_PREFIX="/opt/homebrew"

# yabai --HEAD
# export YABAI_CERT=

___MY_VMOPTIONS_SHELL_FILE="${HOME}/.jetbrains.vmoptions.sh"; if [ -f "${___MY_VMOPTIONS_SHELL_FILE}" ]; then . "${___MY_VMOPTIONS_SHELL_FILE}"; fi

# 默认设置 JDK
# export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

# java 版本管理器
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# sqlite
export PATH="/opt/homebrew/opt/sqlite/bin:$PATH"
export PKG_CONFIG_PATH="/opt/homebrew/opt/sqlite/lib/pkgconfig"

# man nvim open setting
# export MANPAGER="nvim -u /dev/null +Man!"

# apache-cxf 环境
export CXF_HOME=/Users/zard/Documents/MyTools/apache-cxf-3.4.4
export CXF3=$CXF_HOME/bin
export PATH=$CXF3:$PATH

