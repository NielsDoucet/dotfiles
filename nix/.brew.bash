brewup() {
  brew update
  brew upgrade
}
caskup() {
  rm -rf "$(brew --cache)"
  brew update
  brew cask uninstall --force "$@"
  brew cask install "$@"
}
caskinfo() {
  brew cask info "$@"
}
casklist() {
  brew cask list
}
