# Main prompt

local host_name="%{$fg[yellow]%}я%{$fg[white]%}@%{$fg[yellow]%}л"
local path_string="%{$fg[cyan]%}%~"
local prompt_string="»"
local time_string="%{$fg[magenta]%}%T"

# Make prompt_string red if the previous command failed.
local return_status="%(?:%{$fg[blue]%}🦇$prompt_string:%{$fg[red]%}🦆$prompt_string)"

PROMPT='${host_name} ${path_string} ${return_status} %{$reset_color%}'

# oh-my-zsh $(git_prompt_info) puts 'dirty' behind branch
git_custom_prompt() {
  # branch name (.oh-my-zsh/plugins/git/git.plugin.zsh)
  local branch=$(current_branch)
  if [ -n "$branch" ]; then
    # parse_git_dirty echoes PROMPT_DIRTY or PROMPT_CLEAN (.oh-my-zsh/lib/git.zsh)
    echo "$(parse_git_dirty)$ZSH_THEME_GIT_PROMPT_PREFIX$branch$ZSH_THEME_GIT_PROMPT_SUFFIX"
  fi
}

RPROMPT='$(git_prompt_info) ${time_string} %{$reset_color%}'  
