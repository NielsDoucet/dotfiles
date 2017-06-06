alias gw='./gradlew'

[[ -n "$(complete -p "gradle" 2>/dev/null)" ]] && complete -F _gradle gw
