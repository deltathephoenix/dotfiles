#please for sudo
alias please="sudo" #for the lolz

#quick reset .bashrc 
alias brst="source ~/.bashrc"

#Nala quick phrases
alias nin="sudo nala install"
alias npu="sudo nala purdge"
alias nun="sudo nala uninstall"
alias nse="sudo nala search"
alias napu="sudo nala autopurge"
alias nup="sudo nala upgrade"

#nvim quick phrases
alias v="nvim"

# Changing "ls" to "exa"
alias ls='exa -al --color=always --group-directories-first' # my preferred listing
alias la='exa -a --color=always --group-directories-first'  # all files and dirs
alias ll='exa -l --color=always --group-directories-first'  # long format
alias lt='exa -aT --color=always --group-directories-first' # tree listing
alias l.='exa -a | egrep "^\."'
alias lR='exa -alR --color=always --group-directories-first'

# git (stolen dotfiles, lern git first!)
#alias addup='git add -u'
#alias addall='git add .'
#alias branch='git branch'
#alias checkout='git checkout'
#alias clone='git clone'
#alias commit='git commit -m'
#alias fetch='git fetch'
#alias pull='git pull origin'
#alias push='git push origin'
#alias stat='git status'  # 'status' is protected name so using 'stat' instead
#alias tag='git tag'
#alias newtag='git tag -a'

# confirm before overwriting something
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'

#easy expansion
ex ()
{
  if [ -f "$1" ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *.deb)       ar x $1      ;;
      *.tar.xz)    tar xf $1    ;;
      *.tar.zst)   unzstd $1    ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}
