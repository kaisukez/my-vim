git clone https://github.com/VundleVim/Vundle.vim.git tempFolder123HAHAEIEI
mv tempFolder123HAHAEIEI ~/.vim/bundle
rm -rf ~/.vim/bundle/Vundle.vim
mv ~/.vim/bundle/tempFolder123HAHAEIEI ~/.vim/bundle/Vundle.vim
rm -rf tempFolder123HAHAEIEI

git clone https://github.com/powerline/fonts.git tempFolder456HAHAEIEI --depth=1
sh tempFolder456HAHAEIEI/install.sh
rm -rf fonts
