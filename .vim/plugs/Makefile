ALLPLUGINS = easymotion ctrlp autoformat airline airline-theme nerdtree ctrlspace undotree 

TMP = tmpfileH4J7

all: plug $(ALLPLUGINS)

.PHONY: $(ALLPLUGINS)

plug:
	git clone https://github.com/junegunn/vim-plug.git plug

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

undotree:
	git clone https://github.com/mbbill/undotree.git $(TMP)
	mv $(TMP) undotree

fonts:
	git clone https://github.com/powerline/fonts.git $(TMP)
	mv $(TMP) fonts

# tmuxline:
#	git clone https://github.com/edkolev/tmuxline.vim.git $(TMP)
#	mv $(TMP) tmuxline

clean:
	rm -rf plug $(ALLPLUGINS) $(TMP) fonts
