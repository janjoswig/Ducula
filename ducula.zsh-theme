# name abbreviations (from dieter theme)
typeset -A host_abbrev
typeset -A user_abbrev

# TODO: outsource this mapping
# change this mapping as you need it
host_abbrev=(\
    'qcw21' "%{$fg[yellow]%}л"\
    'qcw01' "%{$fg[yellow]%}р1"\
    'qcw02' "%{$fg[yellow]%}р2"\
    'qcw03' "%{$fg[yellow]%}р3"\
    'qcw04' "%{$fg[yellow]%}р4"\
    'qcw05' "%{$fg[yellow]%}р5"\
    'qcw06' "%{$fg[yellow]%}р6"\
    'qcw07' "%{$fg[yellow]%}р7"\
    'qcw08' "%{$fg[yellow]%}р8"\
    'qcw09' "%{$fg[yellow]%}р9"\
    'qcw10' "%{$fg[yellow]%}р10"\
    'qcw11' "%{$fg[yellow]%}р11"\
    'qcw12' "%{$fg[yellow]%}р12"\
    'qcw13' "%{$fg[yellow]%}р13"\
    'qcw14' "%{$fg[yellow]%}р14"\
    'qcw15' "%{$fg[yellow]%}р15"\
    'qcw16' "%{$fg[yellow]%}р16"\
    'qcw17' "%{$fg[yellow]%}р17"\
    'qcw18' "%{$fg[yellow]%}р18"\
    'qcw19' "%{$fg[yellow]%}р20"\
    'qcw20' "%{$fg[yellow]%}р21"\
    'qcw22' "%{$fg[yellow]%}р22"\
    'qcw23' "%{$fg[yellow]%}р23"\
    'qcw24' "%{$fg[yellow]%}р24"\
    'qcw25' "%{$fg[yellow]%}р25"\
    'qcw26' "%{$fg[yellow]%}р26"\
    'qcw27' "%{$fg[yellow]%}р27"\
    'qcw28' "%{$fg[yellow]%}р28"\
    'qcw29' "%{$fg[yellow]%}р29"\
    'qcw30' "%{$fg[yellow]%}р30"\
    'qcw31' "%{$fg[yellow]%}р31"\
    'qcw32' "%{$fg[yellow]%}р32"\
    'qcw33' "%{$fg[yellow]%}р33"\
    'qcw34' "%{$fg[yellow]%}р34"\
    'qcw35' "%{$fg[yellow]%}р35"\
    'qcw36' "%{$fg[yellow]%}р36"\
    'qcw37' "%{$fg[yellow]%}р37"\
    'qcw38' "%{$fg[yellow]%}р38"\
    'qcw39' "%{$fg[yellow]%}р39"\
    'qcw40' "%{$fg[yellow]%}р40"\
    'qcw41' "%{$fg[yellow]%}р41"\
    'qcw42' "%{$fg[yellow]%}р42"\
    'qcw43' "%{$fg[yellow]%}р43"\
    'qcw44' "%{$fg[yellow]%}р44"\
    'qcw45' "%{$fg[yellow]%}р45"\
    'qcw46' "%{$fg[yellow]%}р46"\
    'qcw47' "%{$fg[yellow]%}р47"\
    'qcw48' "%{$fg[yellow]%}р48"\
    'qcw49' "%{$fg[yellow]%}р49"\
    'qcw50' "%{$fg[yellow]%}р50"\
    'qcw51' "%{$fg[yellow]%}р51"\
    'qcw52' "%{$fg[yellow]%}р52"\
    'qcw53' "%{$fg[yellow]%}р53"\
    'qcw54' "%{$fg[yellow]%}р54"\
    'qcw55' "%{$fg[yellow]%}р55"\
    'qcw56' "%{$fg[yellow]%}р56"\
    'qcw57' "%{$fg[yellow]%}р57"\
    'qcw58' "%{$fg[yellow]%}р58"\
    'qcw59' "%{$fg[yellow]%}р59"\
    'qcw60' "%{$fg[yellow]%}р60"\
    'sponk' "%{$fg[yellow]%}м"\
    'sponk-pc' "%{$fg[yellow]%}д"\
    'qcm01' "%{$fg[yellow]%}г"\
    'qcm02' "%{$fg[yellow]%}с2"\
    'qcm03' "%{$fg[yellow]%}с3"\
    'qcm04' "%{$fg[yellow]%}с4"\
    'qcm05' "%{$fg[yellow]%}с5"\
    'qcm06' "%{$fg[yellow]%}с6"\
    'qcm07' "%{$fg[yellow]%}с7"\
    'qcm08' "%{$fg[yellow]%}с8"\
)

user_abbrev=('janjoswig' "я")

# @ host
local host_name="%{$fg[white]%}@${host_abbrev[$HOST]:-$HOST}%{$reset_color%}"

# user colored by priviliges (if not overridden in username abbreviation)
local user_name="%(!.%{$fg[blue]%}.%{$fg[yellow]%})${user_abbrev[$USER]:-$USER}%{$reset_color%}"
local path_string="%{$fg[cyan]%}%~"
local prompt_string="»"
local time_string="%{$fg[magenta]%}%T"

# Make prompt_string red if the previous command failed (and change bat to duck).
local return_status="%(?:%{$fg[blue]%}🦇$prompt_string:%{$fg[red]%}🦆%?$prompt_string)"

# From agnoster theme
job_status() {
    typeset -a job_running

    if [[ $(jobs -l | wc -l) -gt 0 ]]
    then
        job_running+="%{%F{cyan}%}☕ "
    # else # maybe too distracting
    #   job_running+="%{%F{cyan}%}⭐ "
    fi

    echo "$job_running"
}

# git-prompt options
ZSH_THEME_GIT_PROMPT_PREFIX="" # "("
ZSH_THEME_GIT_PROMPT_SUFFIX="" # ")"
ZSH_THEME_GIT_PROMPT_SEPARATOR="|"
ZSH_THEME_GIT_PROMPT_BRANCH=" %{$fg_bold[magenta]%}"
ZSH_THEME_GIT_PROMPT_STAGED="%{$fg[red]%}%{●%G%}"
ZSH_THEME_GIT_PROMPT_CONFLICTS="%{$fg[red]%}%{✖%G%}"
ZSH_THEME_GIT_PROMPT_CHANGED="%{$fg[blue]%}%{✚%G%}"
ZSH_THEME_GIT_PROMPT_BEHIND="%{↓%G%}"
ZSH_THEME_GIT_PROMPT_AHEAD="%{↑%G%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{…%G%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[green]%}%{✔%G%}"

# From agnoster theme
virtual_env() {
    typeset -a venv_prompt
    if [[ ! -z "$VIRTUAL_ENV" ]]; then
        # venv_prompt+=" в:${VIRTUAL_ENV##*/}"
        # Shorten venv name by first occurence of a hyphen (pipenv)
        venv_prompt+=" $(echo "в:`basename $VIRTUAL_ENV`" | cut -d'-' -f1-1)"
    fi
    echo "${venv_prompt}"
}

# Don't let other actions to the virtual environment prompt interfere
VIRTUAL_ENV_DISABLE_PROMPT=1

# Left prompt
PROMPT='$(job_status)${user_name}${host_name}$(virtual_env) ${path_string} ${return_status} %{$reset_color%}'
# Right prompt
RPROMPT='$(git_super_status) ${time_string}%{$reset_color%}'

# Other symbols (scratch): ⚙ ✗ ✘ ⚡⭒ ⭲
