#Based on "POWERLINE"

COMRADE_RIGHT_B=%D{%H:%M:%S}
COMRADE_RIGHT_A=%D{%Y-%m-%d}

COMRADE_COLOR_BG_GRAY=%K{240}
COMRADE_COLOR_BG_LIGHT_GRAY=%K{240}
COMRADE_COLOR_BG_WHITE=%K{255}

COMRADE_COLOR_FG_GRAY=%F{240}
COMRADE_COLOR_FG_LIGHT_GRAY=%F{240}
COMRADE_COLOR_FG_WHITE=%F{255}

GIT_DIRTY_COLOR=%F{032}
GIT_CLEAN_COLOR=%F{green}
GIT_PROMPT_INFO=%F{012}

ZSH_THEME_GIT_PROMPT_PREFIX=" \u2b60 "
ZSH_THEME_GIT_PROMPT_SUFFIX="$GIT_PROMPT_INFO"
ZSH_THEME_GIT_PROMPT_DIRTY=" $GIT_DIRTY_COLOR✘"
ZSH_THEME_GIT_PROMPT_CLEAN=" $GIT_CLEAN_COLOR✔"

ZSH_THEME_GIT_PROMPT_ADDED="%F{082}✚%f"
ZSH_THEME_GIT_PROMPT_MODIFIED="%F{166}✹%f"
ZSH_THEME_GIT_PROMPT_DELETED="%F{160}✖%f"
ZSH_THEME_GIT_PROMPT_RENAMED="%F{220]➜%f"
ZSH_THEME_GIT_PROMPT_UNMERGED="%F{082]═%f"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%F{190]✭%f"

PROMPT=""$'%{$fg_bold[white]%}'" %n %k%f%F{236}%K{023}"$'\u2b80'"%k%f%F{white}%K{023} %~ %k%f%F{236}%K{023}"$'\u2b82'"%f%F{023}%K{243}"$'$(git_prompt_info)'"%f%k%{$reset_color%} "

[ -n "${REMOTEHOST}${SSH_CONNECTION}" ] &&
export PROMPT="%{$fg_bold[white]%}%K{130} ${HOST} %{%k%} $PROMPT"

RPROMPT=$COMRADE_COLOR_FG_WHITE$'\u2b82'"%f$COMRADE_COLOR_BG_WHITE $COMRADE_COLOR_FG_GRAY%@ "$'\u2b82'"%f%k$COMRADE_COLOR_BG_GRAY$COMRADE_COLOR_FG_WHITE $COMRADE_RIGHT_A %f%k"
