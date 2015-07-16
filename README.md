#Dotfiles 
it keeps vimrc and vim folder for now which needs to be symlink after cloned. 
`ln -s ~/dotfiles/vim ~/.vim`
`ln -s ~/dotfiles/vimrc ~/.vimrc`
`ln -s ~/dotfiles/tmux ~/.tmux`
`ln -s ~/dotfiles/zsh ~/.zsh`
`ln -s ~/dotfiles/zshrc ~/.zshrc`
`ln -s ~/dotfiles/zshenv ~/.zshenv`
`ln -s ~/dotfiles/zsh ~/.zsh`
`ln -s ~/dotfiles/gitignore ~/.gitignore`

`git submodule update --init --recursive` in the ~/dotfiles dir when first clone the dotfiles
then
`git submodule foreach git pull origin master` to update them.


once tmux is aliased, run tmux and in order to activate resurrect, make sure to
run `Ctrl+a Ctrl+i` to install the plugins including resurrect. Then you will
have sessions. 
`bindkey|grep line` #list all the key shortcuts on zsh line

when making a symlink, absolute is very frequently the best option, so `ln -s ~/dotfiles/vim ~/.vim`  (note the lack of trailing slash on the .vim dir)

also, if you're going to use relative paths in your ln command, it's better link from the directory that's going to contain the link, rather than from the directory that contains the link's destination


if at any time, you'd like to remove a submodule, remove it from the .gitmodules
and then `git rm --caches /vim/bundles/submodule` and then usual deal.

`git config core.pager 'less -r' `
You can also use git config to setup pager to wrap when you do git diff


don't forget to symlink the ftdetect dir for ultisnips.
`ln -s bundle/ultisnips/ftdetect/* ftdetect`



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

TB continued



