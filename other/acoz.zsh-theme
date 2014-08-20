# Custom git symbols
ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[cyan]%} %B+%b"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[yellow]%} %B✱%b"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%} %B✗%b"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[blue]%} %B➦%b"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[magenta]%} %B✂%b"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[grey]%} %B✈%b"

# Acoz Git prompt
function acoz_git() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo "%{\e[0;34m%}%B[%b%{\e[0m%}%{\e[1;32m%}%B${ref#refs/heads/}%b%{\e[0m%}%B$( git_prompt_status )%b%{$reset_color%}%{\e[0;34m%}%B]%b%{\e[0m%}"
}

# Acoz Prompt with Git
PROMPT=$'$(acoz_git)%{\e[0;34m%}%B[%b%{\e[0m%}%{\e[0;36m%}%B%~%b%{\e[0;34m%}%{\e[0;34m%}%B]%b%{\e[0m%} '
PS2=$' \e[0;34m%}%B>%{\e[0m%}%b '
