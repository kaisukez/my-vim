ALLPLUGINS = easymotion ctrlp autoformat airline airline-theme nerdtree ctrlspace
TMP = tmpfile

all: easymotion ctrlp autoformat airline airline-theme nerdtree ctrlspace

.PHONY: $(ALLPLUGINS)

easymotion:
	git clone https://github.com/easymotion/vim-easymotion.git $(TMP)
	mv $(TMP) easymotion

ctrlp:
	git clone https://github.com/kien/ctrlp.vim.git $(TMP)
	mv $(TMP) ctrlp

autoformat:
	git clone https://github.com/Chiel92/vim-autoformat.git $(TMP)
	mv $(TMP) autoformat

airline:
	git clone https://github.com/vim-airline/vim-airline.git $(TMP)
	mv $(TMP) airline

airline-theme:
	git clone https://github.com/vim-airline/vim-airline-themes.git $(TMP)
	mv $(TMP) airline-theme

nerdtree:
	git clone https://github.com/scrooloose/nerdtree.git $(TMP)
	mv $(TMP) nerdtree

ctrlspace:
	git clone https://github.com/vim-ctrlspace/vim-ctrlspace.git $(TMP)
	mv $(TMP) ctrlspace

clean:
	rm -rf $(ALLPLUGINS) $(TMP)
