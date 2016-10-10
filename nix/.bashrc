test -f ~/.git-completion.bash && . $_
test -f ~/.gradle-tab-completion.bash && . $_
test -f ~/.brew.bash && . $_

if [ -f "$(brew --prefix bash-git-prompt)/share/gitprompt.sh" ]; then
    GIT_PROMPT_ONLY_IN_REPO=1
    GIT_PROMPT_THEME=Single_line_Ubuntu
    source "$(brew --prefix bash-git-prompt)/share/gitprompt.sh"
fi
