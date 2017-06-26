ssh-add -A &>/dev/null
shopt -s nullglob
[[ -f /usr/local/etc/bash_completion ]] && . /usr/local/etc/bash_completion
for f in ~/bash_completion.d/*.{bash,sh}; do source $f; done
for f in ~/bash_alias.d/*.{bash,sh}; do source $f; done
for f in ~/bash_prompt.d/*.{bash,sh}; do source $f; done
for f in ~/bash_script.d/*.{bash,sh}; do source $f; done
shopt -u nullglob
