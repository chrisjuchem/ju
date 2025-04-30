override_git_prompt_colors() {
  GIT_PROMPT_THEME_NAME="JU"

  [ -z "${DISPLAY_HOSTNAME}" ] || Host="${Red}${DISPLAY_HOSTNAME}${ResetColor}:"

  GIT_PROMPT_START_USER="_LAST_COMMAND_INDICATOR_ ${White}${Time12a}${ResetColor} ${Host}${BoldYellow}${PathShort}${ResetColor}"
  GIT_PROMPT_END_USER="${ResetColor} $ "
  GIT_PROMPT_END_ROOT="${BoldRed} # "

  # start overrides:
  GIT_PROMPT_UNTRACKED="${BoldRed}+${Red}"
  GIT_PROMPT_CHANGED="${Cyan}…"
  GIT_PROMPT_STAGED="${Green}●"
}

reload_git_prompt_colors "JU"

