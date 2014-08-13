function prompt_char {
	if [ $UID -eq 0 ]; then echo "#"; else echo "$"; fi
}

PROMPT='%{$fg_bold[red]%}╭%{$reset_color%} %{$fg_bold[yellow]%}[%m]%{$reset_color%} %(!.%{$fg_bold[red]%}.%{$fg_bold[green]%})$(git_prompt_info)%{$fg_bold[blue]%}%(!.%1~.%~) %_$(prompt_char)%{$reset_color%}
%{$fg_bold[red]%}╰%{$reset_color%}%{$fg_bold[blue]%} ➤  %{$reset_color%}'
RPROMPT="[%{$fg_bold[green]%}%?%{$reset_color%}]"

ZSH_THEME_GIT_PROMPT_PREFIX="("
ZSH_THEME_GIT_PROMPT_SUFFIX=") "
