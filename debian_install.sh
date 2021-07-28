# install git
sudo apt install git tmux vim-gtk ipython3 python3-tk -y

# update .vimrc
cp $HOME/jvim/.vimrc $HOME/.vimrc

# update .tmux.conf
cp $HOME/jvim/.tmux.conf $HOME/.tmux.conf 

# install vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

# update jedi-vim (vundle plugin)
cd $HOME/.vim/bundle/jedi-vim
git submodule update --init --recursive 
cd $HOME/jvim

# copy F1, F2, F3, and F4 shortcuts to ~
cp $HOME/jvim/.f1_script.sh $HOME
cp $HOME/jvim/.f2_script.sh $HOME
cp $HOME/jvim/.f3_script.sh $HOME
cp $HOME/jvim/.f4_script.sh $HOME
