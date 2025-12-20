#!/usr/bin/env bash
# Description: This script sretup laout for development work
# by opening and arranging "Visual Studio Code", Googl Chrome"
# and "WezTerm" terminal
#
# For every app to be open should be create bash array that contains this fields:
# apptype=("<Application Name>" "<Application Window Name>" "<shell command to start the app>")

browser=("Google Chrome" "Google Chrome" "open -na 'Google Chrome' --args --new-window")
editor=("Visual Studio Code" "Code" "open -na 'Visual Studio Code' --args --new-window")
# terminal=("Wezterm" "WezTerm" "open -na 'WezTerm'")
# terminal=("Terminal" "Terminal" "open -na 'Terminal'")
terminal=("GhostTY" "Ghostty" "open -na 'Ghostty'")

# Enable current space bsp layout
yabai -m space --layout bsp

# Check which applications are already started in the current space
for app in browser editor terminal
do
  declare -n _app=${app}
  _app_name=${_app[0]}
  _window_name=${_app[1]}

  export wi_${app}=$(yabai -m query --windows --space \
    | jq -r --arg app "${_window_name}" '[.[] | select (.app==$app) .id].[0]')
done

# Start the applications if the are not already start in the currect space
for app in browser editor terminal
do
  wi_app=wi_${app}
  if [[ ${!wi_app} -eq "null" ]]
  then
    declare -n _app=${app}
    eval ${_app[2]}
  fi
done

# Wait the applications to be started and set them on their places
for app in browser editor terminal
do
  declare -n _app=${app}
  _app_name=${_app[0]}
  _window_name=${_app[1]}

  wi_app=wi_${app}
  while [[ ${!wi_app} -eq "null" ]]
  do
    export wi_${app}=$(yabai -m query --windows --space | jq -r --arg app "${_window_name}" '[.[] | select (.app==$app) .id].[0]')
  done
done

# Arrange windows in the current space
yabai -m window $wi_editor --toggle float
yabai -m window $wi_editor --insert east
yabai -m window $wi_browser --toggle float
yabai -m window $wi_editor --insert south
yabai -m window $wi_terminal --toggle float
yabai -m window $wi_editor --ratio abs:0.66
