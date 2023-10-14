## brew
* --formulae
starship nano translate-shell htop neofetch tree fish neovim ranger fzf vim w3m skhd smartmontools cmatrix mas p7zip cowsay yabai youtube-dl pfetch tmux neomutt
* --cask
alacritty cheatsheet iina mpv teamviewer appcleaner karabiner-elements numi textsniper baidunetdisk daisydisk keycastr pdf-expert ubersicht balenaetcher firefox kitty wine-crossover bartender font-sauce-code-pro-nerd-font mailmaster spotify bilibili-official gimp motrix steam clashx

## Mac终端命令
* 开启任何来源下载应用
sudo spctl --master-disable

* Mac键盘移速加快
defaults write -g InitialKeyRepeat -int 10 # normal minimum is 15 (225 ms)
defaults write -g KeyRepeat -int 1 # normal minimum is 2 (30 ms)

* Launchpad 10 x 8 布局
defaults write com.apple.dock springboard-columns -int 10;defaults write com.apple.dock springboard-rows -int 8;defaults write com.apple.dock ResetLaunchPad -bool TRUE;killall Dock

* IdeaVim插件不支持长按连续滚动
* 全局设置：
defaults write -g ApplePressAndHoldEnabled -bool false

* 自动重复多次组合键
defaults write -g NSRepeatCountBinding -string "^r"
