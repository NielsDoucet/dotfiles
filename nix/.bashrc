# fix "sed: RE error: illegal byte sequence" error during scope of this file
LC_ALL=C

ssh-add -A &>/dev/null
shopt -s nullglob

test -f /usr/local/etc/bash_completion && . $_ 
for f in ~/bash_completion.d/*.{bash,sh}; do source $f; done
for f in ~/bash_alias.d/*.{bash,sh}; do source $f; done
for f in ~/bash_prompt.d/*.{bash,sh}; do source $f; done
for f in ~/bash_script.d/*.{bash,sh}; do source $f; done
shopt -u nullglob

# don't leave this set
unset LC_ALL
