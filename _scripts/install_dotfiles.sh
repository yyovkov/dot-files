#!/usr/bin/env bash

## Variables
BRANCH_NAME="fedora"
GITHUB_REPO_URL="https://raw.githubusercontent.com/yyovkov/dot-files/refs/heads/${BRANCH_NAME}/"

## Global Functions
_die()
{
  echo -e "ERROR: ${@}" >&2
  exit 1
}

_info()
{
  echo -e "INFO: ${@}"
}


################################################################################
# Install tmux.conf file
################################################################################
GITHUB_LOCATION_TMUXCONF="config/tmux/tmux.conf"
LOCAL_USER_LOCATION_TMUXCONF="${HOME}/.config/tmux/tmux.conf"

_info "Create TMUX configuration directory"
mkdir -p $(dirname "${LOCAL_USER_LOCATION_TMUXCONF}")

_info "Download and install TMUX configuration directory"
curl -sLo "${LOCAL_USER_LOCATION_TMUXCONF}" "${GITHUB_REPO_URL}/${GITHUB_LOCATION_TMUXCONF}"


################################################################################
# Install vimrc file
################################################################################
GITHUB_LOCATION_VIMRC="vim/vimrc"
LOCAL_USER_LOCATION_VIMRC="${HOME}/.vimrc"

_info "Create VIMRC configuration directory"
mkdir -p $(dirname "${LOCAL_USER_LOCATION_VIMRC}")

_info "Download and install VIMRC configuration directory"
curl -sLo "${LOCAL_USER_LOCATION_VIMRC}" "${GITHUB_REPO_URL}/${GITHUB_LOCATION_VIMRC}"


################################################################################
# Bash profile
################################################################################
GITHUB_LOCATION_BASHPROFILE="bash/bash_profile"
LOCAL_USER_LOCATION_BASHPROFILE=${HOME}/.bash_profile

_info "Create BASHPROFILE configuration directory"
mkdir -p $(dirname "${LOCAL_USER_LOCATION_BASHPROFILE}")

_info "Download and install BASHPROFILE configuration directory"
curl -sLo "${LOCAL_USER_LOCATION_BASHPROFILE}" "${GITHUB_REPO_URL}/${GITHUB_LOCATION_BASHPROFILE}"


################################################################################
# Bash prompt
################################################################################
GITHUB_LOCATION_BASHPROMPT="bash/bashrc.d/prompt"
LOCAL_USER_LOCATION_BASHPROMPT=${HOME}/.bashrc.d/prompt

_info "Create BASHPROMPT configuration directory"
mkdir -p $(dirname "${LOCAL_USER_LOCATION_BASHPROMPT}")

_info "Download and install BASHPROMPT configuration directory"
curl -sLo "${LOCAL_USER_LOCATION_BASHPROMPT}" "${GITHUB_REPO_URL}/${GITHUB_LOCATION_BASHPROMPT}"


################################################################################
# Bash vim motion
################################################################################
GITHUB_LOCATION_BASHVIMMOTION="bash/bashrc.d/vimmotion"
LOCAL_USER_LOCATION_BASHVIMMOTION=${HOME}/.bashrc.d/vimmotion

_info "Create BASHVIMMOTION configuration directory"
mkdir -p $(dirname "${LOCAL_USER_LOCATION_BASHVIMMOTION}")

_info "Download and install BASHVIMMOTION configuration directory"
curl -sLo "${LOCAL_USER_LOCATION_BASHVIMMOTION}" "${GITHUB_REPO_URL}/${GITHUB_LOCATION_BASHVIMMOTION}"

