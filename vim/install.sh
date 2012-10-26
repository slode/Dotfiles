#####################################
# Install basic vim settings
#####################################
ln -s `pwd`/vimrc.symlink ~/.vimrc
ln -s `pwd`/vim.symlink ~/.vim

#####################################
# Install all modules to .vim/bundle
#####################################

GIT=`which git`

PACKAGES="https://github.com/tpope/vim-pathogen.git
https://github.com/skwp/YankRing.vim.git
https://github.com/tpope/vim-git.git
https://github.com/gregsexton/gitv.git
https://github.com/tpope/vim-fugitive.git
https://github.com/pangloss/vim-javascript.git
https://github.com/ervandew/supertab.git
https://github.com/tomtom/tlib_vim.git
https://github.com/MarcWeber/vim-addon-mw-utils.git
https://github.com/garbas/vim-snipmate.git
https://github.com/honza/snipmate-snippets.git
https://github.com/skwp/vim-powerline.git
https://github.com/Rip-Rip/clang_complete.git
https://github.com/scrooloose/nerdtree.git
https://github.com/jistr/vim-nerdtree-tabs.git
https://github.com/skwp/vim-colors-solarized.git
http://github.com/sjl/gundo.vim.git"

if [ -d ~/.vim/bundle ]; then
	cd ~/.vim/bundle
	for PACKAGE in $PACKAGES
 	do
		$GIT clone $PACKAGE
	done
fi
