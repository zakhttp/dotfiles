echo "copying .config/ folders";
mkdir .config;
cp -avr ~/.config/gtk-2.0/  .config/gtk-2.0/;
cp -avr ~/.config/gtk-3.0/  .config/gtk-3.0/;
cp -avr ~/.config/i3        .config/i3/;

echo "copying .Xdefaults";
cp ~/.Xdefaults .Xdefaults;

echo "copying .Xresources";
cp ~/.Xresources .Xresources;

echo "copying .vim/";
cp -avr ~/.vim .vim;

echo "copying .vimrc";
cp ~/.vimrc .vimrc;

echo "copying .zshrc";
cp ~/.zshrc .zshrc;

echo "copying .xinitrc";
cp ~/.xinitrc .xinitrc;


