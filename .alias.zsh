export EDITOR='code'

# editing config
alias ez="$EDITOR $DOTFILES/.zshrc"       # alias for Edit Zshrc
alias ea="$EDITOR $DOTFILES/.alias.zsh"   # alias for Edit Alias
alias sz='exec zsh'               # alias for Source Zsh

# bookmarks, can omit 
alias @tmp='cd ~/tmp'
alias @downloads='cd ~/Downloads'
alias @src='cd ~/src'
alias @dotfiles=$DOTFILES
alias @google='open https://google.com'

#github
git_current_branch () {
        local ref
        ref=$(command git symbolic-ref --quiet HEAD 2> /dev/null) 
        local ret=$? 
        if [[ $ret != 0 ]]
        then
                [[ $ret == 128 ]] && return
                ref=$(command git rev-parse --short HEAD 2> /dev/null)  || return
        fi
        echo ${ref#refs/heads/}
}
alias gpsup='git push --set-upstream origin $(git_current_branch)'
alias gcam='git commit -a -m'
alias gpum='git pull upstream master'
alias gpom='git pull origin master'
alias gb='git branch'                     # make _git_push_auto_branch_local
alias gca='git commit -v --amend'
alias gu='git reset HEAD --'                      # git config --global alias.unadd reset HEAD
alias grb='git rebase'
alias ga='git add'
alias gcm='git commit -m'
alias gco='git checkout'
alias gnew="git checkout -b"
alias gs="git switch"
alias gst='git status'     
alias gp="git push"      # short and concise
alias gpl="git pull"      # short and concise

# directory related
alias ..='..'          # move up by one directory
alias ...='../..'      # move up by two directories
alias ....='../../..'  # move up by three directories
alias ls='ls -G'          # ls with color
alias l='ls -1A'          # list directory
alias ll='ls -lah'        # list directory with additional information
alias cf='fda'            # change folder with fzf
 
# applications
alias tree='cb-tree -C'
alias d='docker'
alias dc='docker-compose'
alias v='nvim'
alias y='yarn'
alias m='make'
 
# create and delete files/folders
alias t='touch'           # create file
alias md='mkdir'          # make directory
alias rd='rm -rf'         # remove directory and file
 
# misc.
alias q='exit'            # vim like quit command to close terminal pane
alias c='clear'           # clear terminal
alias o='open'            # open file or chrome with full url
alias myip="ifconfig | sed -En 's/127.0.0.1//;s/.*inet (addr:)?(([0-9]*\.){3}[0-9]*).*/\2/p'"   # show my ip
alias pingg='ping www.google.com'    # See network speed against google.com
