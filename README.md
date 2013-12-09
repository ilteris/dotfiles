#Dotfiles 
it keeps vimrc and vim folder for now which needs to be symlink after cloned. 
ln -s ~/dotfiles/vim ~/.vim
ln -s ~/dotfiles/vimrc ~/.vimrc


bindkey|grep line #list all the key shortcuts on zsh line

when making a symlink, absolute is very frequently the best option, so ln -s ~/dotfiles/vim ~/.vim  (note the lack of trailing slash on the .vim dir)
also, if you're going to use relative paths in your ln command, it's better link from the directory that's going to contain the link, rather than from the directory that contains the link's destination

git submodule init in the ~/dotfiles dir.
git submodule update 

if at any time, you'd like to remove a submodule, remove it from the .gitmodules
and then git rm --caches /vim/bundles/submodule and then usual deal.


don't forget to symlink the ftdetect dir for ultisnips.
ln -s bundle/ultisnips/ftdetect/* ftdetect



##Plugins
###MatchTag
It matches opening/closing  html tags when cursor is over it.

###Ultisnips
It helps writing code faster by using snippets. Each language have a different
one, can see the snippets in the vim/bundle/ultrasnips/ dir. general key is
<TAB> after first few letters of the snippet name.

###NeoComplete
It's a completion engine with cache. It works with <C-R> 

###vim-easyMotion
Allows better move in the buffer. <Leader><Leader>w is a good start. 





