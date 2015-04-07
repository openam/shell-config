#!/bin/sh

export LSCOLORS=GxFxCxDxBxegedabagaced

HOSTNAME=`hostname -s`

case "$HOSTNAME" in
  (dev-mbp-jmorris)		color="green";;
  (*)					color="red";;
esac

# ls after each cd
# http://stackoverflow.com/questions/3964068/zsh-automatically-run-ls-after-every-cd
function chpwd() {
    emulate -L zsh
    a
}

function precmd() {
   	echo -ne "\033]0;${PWD##*/}\007"
}

# machine name
function box_name {
    [ -f ~/.box-name ] && cat ~/.box-name || echo $HOST
}

# directory info
local current_dir='${PWD/#$HOME/~}'

# git info
local git_info='$(git_prompt_info)'
ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[white]%}%{$reset_color%}%{$fg_bold[white]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[green]%}"

# %{$fg_bold[white]%}[%n@$(box_name)] \
# %{$fg[white]%}- \

PROMPT="




%{$terminfo[bold]$fg[$color[@]]%}${current_dir}%{$reset_color%}\
${git_info} \

%{$terminfo[bold]$fg[$color[@]]%}> %{$reset_color%}"

if [[ "$USER" == "root" ]]; then
PROMPT="
%{$terminfo[bold]$fg[blue]%}#%{$reset_color%} \
%{$bg[yellow]%}%{$fg[cyan]%}%n%{$reset_color%} \
%{$fg[white]%}at \
%{$fg[green]%}$(box_name) \
%{$fg[white]%}in \
%{$terminfo[bold]$fg[yellow]%}${current_dir}%{$reset_color%}\
${git_info} \
%{$fg[white]%}[%*]
%{$terminfo[bold]$fg[red]%}$ %{$reset_color%}"
fi
