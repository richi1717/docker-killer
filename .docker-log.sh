#!/usr/bin/env bash

# color codes
dark_gray='\033[1;30m'
light_red='\033[1;31m'
light_green='\033[1;32m'
light_blue='\033[1;34m'
light_purple='\033[1;35m'
light_cyan='\033[1;36m'
no_color='\033[1;39m'

if [[ "$1" = "" ]]
then
  echo -e "
  ${dark_gray}~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  Please enter the IMAGE NAME you would like to log
  Something like:

  ${light_green}$ ~/.docker-log.sh hello-world
  ${dark_gray}~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  "
else
  echo -e "
  ${dark_gray}~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  Looking for ${light_purple}$1
  ${dark_gray}~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  "

  docker_id=$(docker ps | grep $1)

  arr=(${docker_id})
  if [[ "${arr[0]}" != "" ]]
  then
  id=${arr[0]}
  echo -e "${light_green}Found ${light_purple}$1${dark_gray} id: ${light_cyan}
   "

  echo -e "${dark_gray}Let Logging Commence!!!

Run: ${light_blue}tail -f /var/log/httpd/error_log${no_color}
  "

  docker exec -it ${id} /bin/bash

  else
  echo -e "${light_red}No 🐳🐳 ${light_blue}Docker${light_red} 🐳🐳 image for ${light_purple}$1${light_red} to log"
  fi
fi