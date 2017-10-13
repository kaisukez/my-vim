git clone https://github.com/VundleVim/Vundle.vim.git tempFolder123HAHAEIEI
rm -rf ~/.vim/bundle/Vundle.vim
mv  tempFolder123HAHAEIEI ~/.vim/bundle/Vundle.vim

git clone https://github.com/powerline/fonts.git tempFolder456HAHAEIEI --depth=1
sh tempFolder456HAHAEIEI/install.sh
rm -rf fonts tempFolder456HAHAEIEI
