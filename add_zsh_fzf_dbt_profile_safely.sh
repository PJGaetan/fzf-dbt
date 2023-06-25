#!/bin/sh

NL='
'

# technique heavily inspired by : https://github.com/paul-hammant/switchjdk/blob/master/add_switchjdk_to_bash_profile_safely.sh
zProfile=$(cat ~/.zprofile | sed '/fzf_dbt.sh/d')
echo "${zProfile}${NL}${NL}# Leave this fzf_dbt.sh incantation as a single line, so that homebrew upgrades are smooth${NL}if [ -f $(brew --prefix)/etc/fzf_dbt.sh ]; then source $(brew --prefix)/etc/fzf_dbt.sh; fi${NL}" > ~/.zprofile

echo "*** Did the above fail with permissions errors? ***"
echo "If yes, you will need to do this after homebrew finishes (once off):"
echo "  /usr/local/Cellar/pjgaetan/$1/bin/add_zsh_profile_safely.sh"
