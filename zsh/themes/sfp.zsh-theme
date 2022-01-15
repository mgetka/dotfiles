# simple fucking prompt
# based on kphoen & philips

# virtualenv handling
venv_prompt_info() {
    
    if [ -n "$VIRTUAL_ENV" ]; then
        echo "$ZSH_THEME_VIRTUALENV_PROMPT_PREFIX${VIRTUAL_ENV:t}$ZSH_THEME_VIRTUALENV_PROMPT_SUFFIX"
    fi
    
}

if [[ "$TERM" != "dumb" ]] && [[ "$DISABLE_LS_COLORS" != "true" ]]; then
    PROMPT='[%n@%m %{$FG[154]%}%c%{$reset_color%}]%(!.#.$) '

    # display exitcode on the right when >0
    return_code="%(?..%{$FG[009]%}%? ↵%{$reset_color%})"

    RPROMPT='${return_code}$(git_prompt_status)%{$reset_color%}$(git_prompt_info)$(venv_prompt_info)'

    ZSH_THEME_GIT_PROMPT_PREFIX=" %{$FG[244]%}"
    ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
    ZSH_THEME_GIT_PROMPT_DIRTY=""
    ZSH_THEME_GIT_PROMPT_CLEAN=""
    ZSH_THEME_GIT_PROMPT_ADDED="%{$FG[002]%} ✚"
    ZSH_THEME_GIT_PROMPT_MODIFIED="%{$FG[003]%} ✹"
    ZSH_THEME_GIT_PROMPT_DELETED="%{$FG[124]%} ✖"
    ZSH_THEME_GIT_PROMPT_RENAMED="%{$FG[012]%} ➜"
    ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[yellow]%} ═"
    ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$FG[118]%} ✭"
    
    ZSH_THEME_VIRTUALENV_PROMPT_PREFIX=" %{$FG[106]%}@"
    ZSH_THEME_VIRTUALENV_PROMPT_SUFFIX="%{$reset_color%}"
    
else
    PROMPT='[%n@%m %c]%(!.#.$) '

    # display exitcode on the right when >0
    return_code="%(?..%? ↵)"

    RPROMPT='${return_code}$(git_prompt_status)$(git_prompt_info)'

    ZSH_THEME_GIT_PROMPT_PREFIX=" "
    ZSH_THEME_GIT_PROMPT_SUFFIX=""
    ZSH_THEME_GIT_PROMPT_DIRTY=""
    ZSH_THEME_GIT_PROMPT_CLEAN=""
    ZSH_THEME_GIT_PROMPT_ADDED=" ✚"
    ZSH_THEME_GIT_PROMPT_MODIFIED=" ✹"
    ZSH_THEME_GIT_PROMPT_DELETED=" ✖"
    ZSH_THEME_GIT_PROMPT_RENAMED=" ➜"
    ZSH_THEME_GIT_PROMPT_UNMERGED=" ═"
    ZSH_THEME_GIT_PROMPT_UNTRACKED=" ✭"
    
    ZSH_THEME_VIRTUALENV_PROMPT_PREFIX=" &"
    ZSH_THEME_VIRTUALENV_PROMPT_SUFFIX=""
    
fi
