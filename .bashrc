# Meus aliases
alias zopectl='/home/pedro/zope_instances/instance1/bin/zopectl'

extract() {    
  if [ -f "$1" ] ; then
    case "$1" in
      *.tar.bz2) tar xvjf "$1"   ;;
      *.tar.gz)  tar xvzf "$1"   ;;
      *.bz2)     bunzip2 "$1"    ;;
      *.rar)     unrar x "$1"    ;;
      *.gz)      gunzip "$1"     ;;
      *.tar)     tar xvf "$1"    ;;
      *.tbz2)    tar xvjf "$1"   ;;
      *.tgz)     tar xvzf "$1"   ;;
      *.zip)     unzip "$1"      ;;
      *.Z)       uncompress "$1" ;;
      *.7z)      7z x "$1"       ;;
      *)
      echo "'$1' Nao pode ser extraido."
      return 1
      ;;
    esac
  else
    echo "'$1' Nao eh um arquivo valido."
    return 1
  fi
  return 0
}

# Estilo do meu terminal
export PS1="\[\e[00;32m\]\u\[\e[0m\]\[\e[00;37m\]@\[\e[0m\]\[\e[00;34m\]\h\[\e[0m\]\[\e[00;37m\]:\[\e[0m\]\[\e[00;31m\]\W\[\e[0m\]\[\e[00;37m\]\\$ \[\e[0m\]"
