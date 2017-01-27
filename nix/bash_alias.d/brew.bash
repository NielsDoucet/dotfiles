alias brewup="brew update; brew upgrade;"
alias caskinfo='brew cask info'
alias casklist='brew cask list'

caskup() {
  rm -rf "$(brew --cache)"
  brew update
  brew cask uninstall --force "$@"
  brew cask install "$@"
}
