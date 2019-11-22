# Main prompt

local host_name="%{$fg[yellow]%}я%{$fg[white]%}@%{$fg[yellow]%}л"
local path_string="%{$fg[cyan]%}%~"
local prompt_string="»"
local time_string="%{$fg[magenta]%}%T"

# Make prompt_string red if the previous command failed.
local return_status="%(?:%{$fg[blue]%}🦇$prompt_string:%{$fg[red]%}🦆$prompt_string)"

PROMPT='${host_name} ${path_string} ${return_status} %{$reset_color%}'

RPROMPT='$(git_super_status) ${time_string} %{$reset_color%}' 

#Symbols: ✗ 
