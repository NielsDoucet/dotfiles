ssh-add -A &>/dev/null
for f in ~/bash_alias.d/*; do source $f; done
for f in ~/bash_completion.d/*; do source $f; done
for f in ~/bash_prompt.d/*; do source $f; done
