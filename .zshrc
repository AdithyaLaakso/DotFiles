# Add user configurations here
# For HyDE to not touch your beloved configurations,
# we added 2 files to the project structure:
# 1. ~/.user.zsh - for customizing the shell related hyde configurations
# 2. ~/.zshenv - for updating the zsh environment variables handled by HyDE // this will be modified across updates

#  Plugins 
# oh-my-zsh plugins are loaded  in ~/.user.zsh file, see the file for more information

#  Aliases 
# Add aliases here

#  This is your file 
export EDITOR=nvim

#source other scripts
source $( fd -e .zsh --full-path ~/Scripts/add_to_zshrc)

#add other scripts to path
export PATH=$PATH:~/Scripts/path/

#global rebind caps>>esc
setxkbmap -option caps:escape
xmodmap -e "keycode 9 = NoSymbol"

alias ls='ls --color=auto'
alias ll='ls -l'
alias grep='grep --color=auto'

alias v='nvim'
alias va='nvim *'
alias vl='nvim leetcode.nvim'
alias vr='nvim $(fd -e rs)'
alias vv='nvim ~/.config/nvim/*.lua'
alias vz='nvim ~/.zshrc'
alias rv='nvim $(fd -e rs)'

alias nrd='npm run dev'

alias p='sudo pacman'
alias ps='sudo pacman -S'

alias g='git'

alias copy='xclip -selection clipboard'
alias pasteto='xclip -selection clipboard -o >'

alias wifi='wifi.zsh'

function save_path() {
	pwd >> ~/.tmp/bookmarked_dirs.list
}
function open_path() {
	cd $(tail -n 1 ~/.tmp/bookmarked_dirs.list)
}

alias save="save_path"
alias recent="open_path"

function cd_up() {
  cd .. && print -s "cd .."
  zle reset-prompt
}
zle -N cd_up
bindkey "^[," cd_up  # Alt+O

function clear_screen() {
  clear && print -s "clear"
  zle reset-prompt
}
zle -N clear_screen
bindkey "^[n" clear_screen  # Alt+N
