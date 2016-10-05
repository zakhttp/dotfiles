echo "copying .config/ folders";
cp -r ~/.config/gtk-2.0/  .config/gtk-2.0/;
cp -r ~/.config/gtk-3.0/  .config/gtk-3.0/;
cp -r ~/.config/i3        .config/i3/;

echo "copying .Xdefaults";
cp ~/.Xdefaults .Xdefaults;

echo "copying .Xresources";
cp ~/.Xresources .Xresources;

echo "copying .vim/";
cp -r ~/.vim .vim;

echo "copying .vimrc";
cp ~/.vimrc .vimrc;
