# install git
sudo dnf install git tmux vim-X11 python3-ipython python3-tkinter

# update bashrc
echo "alias vim='vimx'" >> $HOME/.bashrc
echo "alias sudo='sudo '" >> $HOME/.bashrc

# update .vimrc
cp $HOME/jvim/.vimrc $HOME/.vimrc

# update .tmux.conf
cp $HOME/jvim/.tmux.conf $HOME/.tmux.conf 

# install vundle
git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
vimx +PluginInstall +qall

# update jedi-vim (vundle plugin)
cd $HOME/.vim/bundle/jedi-vim
git submodule update --init --recursive 
cd $HOME/jvim

# copy F1, F2, F3, and F4 shortcuts to $HOME
cp $HOME/jvim/.f1_script.sh $HOME
cp $HOME/jvim/.f2_script.sh $HOME
cp $HOME/jvim/.f3_script.sh $HOME
cp $HOME/jvim/.f4_script.sh $HOME

exec bash
