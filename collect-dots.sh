################################################################################
#             Simple program to collect the dotfiles in 1 location             #
################################################################################

cp -rv ~/.config/{i3,rofi,alacritty,konsole,nvim} .
cp -v ~/.vimrc .
cp -v ~/.tmux.conf .
cp -v ~/.{bash,zsh}rc .
cp -rv ~/.config/kitty/kitty.conf .
