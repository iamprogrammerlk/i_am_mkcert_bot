#!/bin/bash

# BEWARE: There are some differences between colors when combining colors with bold text attribute:
#         By default bold text has set foreground color to blue

# BEWARE: Below functions can't be use correctly with other string formatters 
#         (like echo_italic, echo_underline, etc...), since it override text to bold by default.
#         echo_foreground_dark_gray
#         echo_foreground_light_red
#         echo_foreground_light_green
#         echo_foreground_yellow
#         echo_foreground_light_blue
#         echo_foreground_light_purple
#         echo_foreground_light_cyan
#         echo_foreground_white
#         echo_background_dark_gray
#         echo_background_light_red
#         echo_background_light_green
#         echo_background_yellow
#         echo_background_light_blue
#         echo_background_light_purple
#         echo_background_light_cyan
#         echo_background_white

page_width=120
divider_symbol="#"
fill_symbol=" "
border="###"
app_name="I_AM_MKCERT_BOT"
app_url="https://github.com/iamprogrammerlk/i_am_mkcert_bot"
environment_list=("Fedora Linux" "Debian Linux" "MacOS" "Windows")
environment=${environment_list[0]}

# Set string to normal characters
# Parameter $1 string to be formatted (input)
function echo_normal()
{
  echo -e "\e[0m$1\e[0m"
}

# Set string to bold characters
# Parameter $1 string to be formatted (input)
function echo_bold()
{
  echo -e "\e[1m$1\e[0m"
}

# TODO: \e[2m unknown character formatting

# Set string to italic characters
# Parameter $1 string to be formatted (input)
function echo_italic()
{
  echo -e "\e[3m$1\e[0m"
}

# Set string to underline characters
# Parameter $1 string to be formatted (input)
function echo_underline()
{
  echo -e "\e[4m$1\e[0m"
}

# Set string to blinking characters
# Parameter $1 string to be formatted (input)
function echo_blinking()
{
  echo -e "\e[5m$1\e[0m"
}

# TODO: \e[6m unknown character formatting

# Set string to reverse video characters
# Parameter $1 string to be formatted (input)
function echo_reverse_video()
{
  echo -e "\e[7m$1\e[0m"
}

# Set string foreground color to black
# Parameter $1 string to be formatted (input)
function echo_foreground_black()
{
  echo -e "\e[30m$1\e[0m"
}

# Set string foreground color to red
# Parameter $1 string to be formatted (input)
function echo_foreground_red()
{
  echo -e "\e[31m$1\e[0m"
}

# Set string foreground color to green
# Parameter $1 string to be formatted (input)
function echo_foreground_green()
{
  echo -e "\e[32m$1\e[0m"
}

# Set string foreground color to brown
# Parameter $1 string to be formatted (input)
function echo_foreground_brown()
{
  echo -e "\e[33m$1\e[0m"
}

# Set string foreground color to blue
# Parameter $1 string to be formatted (input)
function echo_foreground_blue()
{
  echo -e "\e[34m$1\e[0m"
}

# Set string foreground color to purple
# Parameter $1 string to be formatted (input)
function echo_foreground_purple()
{
  echo -e "\e[35m$1\e[0m"
}

# Set string foreground color to cyan
# Parameter $1 string to be formatted (input)
function echo_foreground_cyan()
{
  echo -e "\e[36m$1\e[0m"
}

# Set string foreground color to light gray
# Parameter $1 string to be formatted (input)
function echo_foreground_light_gray()
{
  echo -e "\e[37m$1\e[0m"
}

# Set string foreground color to dark gray
# Parameter $1 string to be formatted (input)
function echo_foreground_dark_gray()
{
  echo -e "\e[1;30m$1\e[0m"
}

# Set string foreground color to light red
# Parameter $1 string to be formatted (input)
function echo_foreground_light_red()
{
  echo -e "\e[1;31m$1\e[0m"
}

# Set string foreground color to light green
# Parameter $1 string to be formatted (input)
function echo_foreground_light_green()
{
  echo -e "\e[1;32m$1\e[0m"
}

# Set string foreground color to yellow
# Parameter $1 string to be formatted (input)
function echo_foreground_yellow()
{
  echo -e "\e[1;33m$1\e[0m"
}

# Set string foreground color to light blue
# Parameter $1 string to be formatted (input)
function echo_foreground_light_blue()
{
  echo -e "\e[1;34m$1\e[0m"
}

# Set string foreground color to light purple
# Parameter $1 string to be formatted (input)
function echo_foreground_light_purple()
{
  echo -e "\e[1;35m$1\e[0m"
}

# Set string foreground color to light cyan
# Parameter $1 string to be formatted (input)
function echo_foreground_light_cyan()
{
  echo -e "\e[1;36m$1\e[0m"
}

# Set string foreground color to white
# Parameter $1 string to be formatted (input)
function echo_foreground_white()
{
  echo -e "\e[1;37m$1\e[0m"
}

# Set string background color to black
# Parameter $1 string to be formatted (input)
function echo_background_black()
{
  echo -e "\e[40m$1\e[0m"
}

# Set string background color to red
# Parameter $1 string to be formatted (input)
function echo_background_red()
{
  echo -e "\e[41m$1\e[0m"
}

# Set string background color to green
# Parameter $1 string to be formatted (input)
function echo_background_green()
{
  echo -e "\e[42m$1\e[0m"
}

# Set string background color to brown
# Parameter $1 string to be formatted (input)
function echo_background_brown()
{
  echo -e "\e[43m$1\e[0m"
}

# Set string background color to blue
# Parameter $1 string to be formatted (input)
function echo_background_blue()
{
  echo -e "\e[44m$1\e[0m"
}

# Set string background color to purple
# Parameter $1 string to be formatted (input)
function echo_background_purple()
{
  echo -e "\e[45m$1\e[0m"
}

# Set string background color to cyan
# Parameter $1 string to be formatted (input)
function echo_background_cyan()
{
  echo -e "\e[46m$1\e[0m"
}

# Set string background color to light gray
# Parameter $1 string to be formatted (input)
function echo_background_light_gray()
{
  echo -e "\e[47m$1\e[0m"
}


# Set string background color to dark gray
# Parameter $1 string to be formatted (input)
function echo_background_dark_gray()
{
  echo -e "\e[1;40m$1\e[0m"
}

# Set string background color to light red
# Parameter $1 string to be formatted (input)
function echo_background_light_red()
{
  echo -e "\e[1;41m$1\e[0m"
}

# Set string background color to light green
# Parameter $1 string to be formatted (input)
function echo_background_light_green()
{
  echo -e "\e[1;42m$1\e[0m"
}

# Set string background color to yellow
# Parameter $1 string to be formatted (input)
function echo_background_yellow()
{
  echo -e "\e[1;43m$1\e[0m"
}

# Set string background color to light blue
# Parameter $1 string to be formatted (input)
function echo_background_light_blue()
{
  echo -e "\e[1;44m$1\e[0m"
}

# Set string background color to light purple
# Parameter $1 string to be formatted (input)
function echo_background_light_purple()
{
  echo -e "\e[1;45m$1\e[0m"
}

# Set string background color to light cyan
# Parameter $1 string to be formatted (input)
function echo_background_light_cyan()
{
  echo -e "\e[1;46m$1\e[0m"
}

# Set string background color to white
# Parameter $1 string to be formatted (input)
function echo_background_white()
{
  echo -e "\e[1;47m$1\e[0m"
}

function echo_empty_line()
{
  echo ""
}

function _debug()
{
  string_to_format="This string formatting is applied by calling function "

  echo_normal "$string_to_format echo_normal"
  echo_bold "$string_to_format echo_bold"
  echo_italic "$string_to_format echo_italic"
  echo_underline "$string_to_format echo_underline"
  echo_blinking "$string_to_format echo_blinking"
  echo_reverse_video "$string_to_format echo_reverse_video"

  echo ""

  echo_foreground_black "$string_to_format echo_foreground_black"
  echo_foreground_red "$string_to_format echo_foreground_red"
  echo_foreground_green "$string_to_format echo_foreground_green"
  echo_foreground_brown "$string_to_format echo_foreground_brown"
  echo_foreground_blue "$string_to_format echo_foreground_blue"
  echo_foreground_purple "$string_to_format echo_foreground_purple"
  echo_foreground_cyan "$string_to_format echo_foreground_cyan"
  echo_foreground_light_gray "$string_to_format echo_foreground_light_gray"

  echo ""

  echo_foreground_dark_gray "$string_to_format echo_foreground_dark_gray"
  echo_foreground_light_red "$string_to_format echo_foreground_light_red"
  echo_foreground_light_green "$string_to_format echo_foreground_light_green"
  echo_foreground_yellow "$string_to_format echo_foreground_yellow"
  echo_foreground_light_blue "$string_to_format echo_foreground_light_blue"
  echo_foreground_light_purple "$string_to_format echo_foreground_light_purple"
  echo_foreground_light_cyan "$string_to_format echo_foreground_light_cyan"
  echo_foreground_white "$string_to_format echo_foreground_white"

  echo ""

  echo_background_black "$string_to_format echo_background_black"
  echo_background_red "$string_to_format echo_background_red"
  echo_background_green "$string_to_format echo_background_green"
  echo_background_brown "$string_to_format echo_background_brown"
  echo_background_blue "$string_to_format echo_background_blue"
  echo_background_purple "$string_to_format echo_background_purple"
  echo_background_cyan "$string_to_format echo_background_cyan"
  echo_background_light_gray "$string_to_format echo_background_light_gray"

  echo ""

  echo_background_dark_gray "$string_to_format echo_background_dark_gray"
  echo_background_light_red "$string_to_format echo_background_light_red"
  echo_background_light_green "$string_to_format echo_background_light_green"
  echo_background_yellow "$string_to_format echo_background_yellow"
  echo_background_light_blue "$string_to_format echo_background_light_blue"
  echo_background_light_purple "$string_to_format echo_background_light_purple"
  echo_background_light_cyan "$string_to_format echo_background_light_cyan"
  echo_background_white "$string_to_format echo_background_white"

  # combine use case

  echo ""
  echo "$(echo_blinking "<<-- SAMPLE -->>") Mix the Foreground Color $(echo_foreground_brown "Brown") with the $(echo_foreground_yellow "Yellow") and Background Color $(echo_background_purple " Purple ") on $(echo_reverse_video "$(echo_underline " BASH ")")"
  echo ""

  exit 1
}

# START: debug test ---------------------------------------------------------------------------------------------------
# _debug
# END: debug test -----------------------------------------------------------------------------------------------------

function echo_header_divider()
{
  local divider=""
  local i=0
  while [[ $i -le $page_width ]] ; do
    divider="$divider$divider_symbol"
    (( i += 1 ))
  done
  echo -e "$divider"
}

function echo_header_fill()
{
  local fill=""
  local border_width=$(expr length "$border")
  local page_width=$(( $page_width - ($border_width * 2) ))
  local i=0
  while [[ $i -le $page_width ]] ; do
    fill="$fill$fill_symbol"
    (( i += 1 ))
  done
  echo -e "$border$fill$border"
}

# BEWARE: Usage of unicode characters and emojis will messed up the text alignment.
# BEWARE: Usage of odd(cannot be divided by 2 evenly) numbers of characters will messed up the text alignment. use space
#         to make the character count to even number...
function echo_header_title_centered()
{
  local before_fill=""
  local after_fill=""
  local string_length=$(expr length "$1")
  local border_width=$(expr length "$border")
  local page_width=$(( $page_width - ($border_width * 2) ))
  local space_length=$(( (($page_width - $string_length) / 2) ))
  local i=0
  while [[ $i -le $space_length ]] ; do
    before_fill="$before_fill$fill_symbol"
    after_fill="$after_fill$fill_symbol"
    (( i += 1 ))
  done
  echo -e "$border$before_fill$1$after_fill$border"
}

# BEWARE: Usage of unicode characters and emojis will messed up the text alignment.
# BEWARE: Usage of odd(cannot be divided by 2 evenly) numbers of characters will messed up the text alignment. use space
#         to make the character count to even number...
function echo_header_title_left()
{
  local after_fill=""
  local string_length=$(expr length "$1")
  local border_width=$(expr length "$border")
  local page_width=$(( $page_width - ($border_width * 2) ))
  local space_length=$(( ($page_width - $string_length) ))
  local i=0
  while [[ $i -le $space_length ]] ; do
    after_fill="$after_fill$fill_symbol"
    (( i += 1 ))
  done
  echo -e "$border$1$after_fill$border"
}

function echo_warning_message_box()
{
  echo_foreground_red "$(echo_header_divider)"
  echo_foreground_red "$(echo_header_fill)"
  echo_foreground_red "$(echo_header_title_centered "$1")"
  if [[ "$2" ]]; then
    echo_foreground_red "$(echo_header_fill)"
    echo_foreground_red "$(echo_header_title_centered "$2")"
  fi
  if [[ "$3" ]]; then
    echo_foreground_red "$(echo_header_title_centered "$3")"
  fi
  if [[ "$4" ]]; then
    echo_foreground_red "$(echo_header_title_centered "$4")"
  fi
  if [[ "$5" ]]; then
    echo_foreground_red "$(echo_header_title_centered "$5")"
  fi
  if [[ "$6" ]]; then
    echo_foreground_red "$(echo_header_title_centered "$6")"
  fi
  if [[ "$7" ]]; then
    echo_foreground_red "$(echo_header_title_centered "$7")"
  fi
  echo_foreground_red "$(echo_header_fill)"
  echo_foreground_red "$(echo_header_divider)"
  echo_empty_line
}

function echo_success_message()
{
  if [ -z "${2}" ]; then
    local icon="[ ✓ ]"
  else
    local icon="${2}"
  fi
  echo -e "$(echo_foreground_light_purple "$app_name") $(echo_background_green " $icon ") $(echo_foreground_green "$1")"
}

function echo_error_message()
{
  if [ -z "${2}" ]; then
    local icon="[ x ]"
  else
    local icon="${2}"
  fi
  echo -e "$(echo_foreground_light_purple "$app_name") $(echo_blinking "$(echo_background_red " $icon ")") $(echo_foreground_red "$1")"
}

function echo_question_message()
{
  if [ -z "${2}" ]; then
    local icon="[ ? ]"
  else
    local icon="${2}"
  fi
  echo -e "$(echo_foreground_light_purple "$app_name") $(echo_background_blue " $icon ") $(echo_foreground_blue "$1")"
}

function echo_process_message()
{
  if [ -z "${2}" ]; then
    local icon="[ > ]"
  else
    local icon="${2}"
  fi
  echo -e "$(echo_foreground_light_purple "$app_name") "$(echo_foreground_white "$(echo_background_brown " $icon ")")" $(echo_foreground_brown "$1")"
}

function echo_information_message()
{
  if [ -z "${2}" ]; then
    local icon="[ ! ]"
  else
    local icon="${2}"
  fi
  echo -e "$(echo_foreground_light_purple "$app_name") $(echo_foreground_white "$(echo_background_yellow " $icon ")") $(echo_foreground_yellow "$1")"
}

function echo_system_message()
{
  if [ -z "${2}" ]; then
    local icon="[ < ]"
  else
    local icon="${2}"
  fi
  echo -e "$(echo_foreground_light_purple "$app_name") $(echo_foreground_white "$(echo_background_brown " $icon ")") $(echo_foreground_brown "$1")"
}

function print_header()
{
  echo_foreground_purple "$(echo_header_divider)"
  echo_foreground_purple "$(echo_header_fill)"
  echo_foreground_purple "$(echo_header_title_centered "$app_name")"
  echo_foreground_purple "$(echo_header_fill)"
  echo_foreground_purple "$(echo_header_divider)"
  echo_empty_line
}

function print_copyright()
{
  local msg_01="   Developer : I am Programmer [https://iamprogrammer.lk] "
  local msg_02="     License : WTFPL license [https://github.com/iamprogrammerlk/iam_mkcert_bot?tab=WTFPL-1-ov-file]"
  local msg_03="     Version : 1.0.0"
  echo_foreground_dark_gray "$(echo_header_divider)"
  echo_foreground_dark_gray "$(echo_header_fill)"
  echo_foreground_dark_gray "$(echo_header_title_left "$msg_01")"
  echo_foreground_dark_gray "$(echo_header_title_left "$msg_02")"
  echo_foreground_dark_gray "$(echo_header_title_left "$msg_03")"
  echo_foreground_dark_gray "$(echo_header_fill)"
  echo_foreground_dark_gray "$(echo_header_divider)"
  echo_empty_line
}

function is_run_by_root()
{
  local me="$(whoami)"
  if [ "$me" == "root" ]; then
  local msg_01="Please do not run '$app_name' as a 'ROOT' user,"
  local msg_02="re-run '$app_name' as a normal user (without the 'sudo' command),"
  local msg_03="then give it 'sudo' privileges to continue."
  echo_warning_message_box "IMPORTANT...!" "$msg_01" "$msg_02" "$msg_03"
  echo_error_message "$(echo_blinking "Cannot be continued... '$app_name' is terminated...")"
  echo_empty_line
  exit 1
  fi
}

function get_user_credential()
{
  echo_question_message "Hi '$(whoami)', administrative privilege is required to run '$app_name'."
  echo_empty_line
  if [ "$(id -nu)" != "root" ]; then
    # resetting cached credentials
    sudo --reset-timestamp
    local me=$(exec sudo whoami)
    # sudo will terminate the process if user entered an wrong password. no need of 'exit 1' here.
    echo_empty_line
    echo_success_message "Login as a '$me' user is successful..."
    echo_empty_line
  fi
}

function get_operating_system()
{
  local is_valid_input=false
  local msg="Choosing the wrong operating system will prevent the correct 'RootCA' installation on your system! "
  echo_warning_message_box "IMPORTANT...!" "$msg"
  echo_empty_line
  echo_question_message "Please enter the number to select your operating system from the list. Default is '$environment'"
  echo_empty_line
  while [[ $is_valid_input == false ]]; do
    unset user_input
    while [[ ! ${user_input} =~ ^[0-9]+$ ]]; do
      for index in ${!environment_list[@]}; do
        echo_information_message "${environment_list[$index]}" "( $index )"
      done
      echo_empty_line
      read user_input
      echo_empty_line
      if [[ "$user_input" == "" ]]; then
        user_input=0
        echo_system_message "The user has chosen the default operating system."
        echo_empty_line
      fi
      if [[ ! ${user_input} =~ ^[0-9]+$ ]]; then
        echo_error_message "Character $(echo_bold "'$user_input'") $(echo_foreground_red "is invalid input, ensure that you enter numerical values only.")"
        echo_empty_line
      fi
    done
    if [ ${#environment_list[@]} -lt $user_input -o ${#environment_list[@]} -eq $user_input ]; then
    echo_error_message "Number $(echo_bold "'$user_input'") $(echo_foreground_red "is not valid input, Please enter the number ONLY from the list.")"
    echo_empty_line
    is_valid_input=false
    else
      is_valid_input=true
      environment=${environment_list[$user_input]}
    fi
  done
  if [[ $is_valid_input == true ]]; then
    echo_success_message "Operating system '$environment' is selected."
    echo_empty_line
  fi
}

#  TODO: Implement is_mkcert_installed()
# function is_mkcert_installed()
# {

# }

function create_rootca()
{
  echo_process_message "Creating a new local CA..."
  echo_empty_line
  if ! command -v mkcert >&2; then
    echo_empty_line
    local msg_01="Can't find the MkCert CLI executable on your system. MkCert CLI is required to run '$app_name'."
    local msg_02="Please install it and try again. https://github.com/FiloSottile/mkcert "
    local msg_03=""
    echo_warning_message_box "ERROR...!" "$msg_01" "$msg_02" "$msg_03"
    echo_error_message "$(echo_blinking "Cannot be continued... '$app_name' is terminated...")"
    echo_empty_line
    exit 1
  fi
  echo_empty_line
  mkcert -install
  echo_system_message "Getting the 'RootCA' location..."
  echo_empty_line
  rootca_location=$(mkcert -CAROOT)
  echo_success_message "Newly created local 'RootCA' is founded at '$rootca_location'"
  echo_empty_line
  # install rootCA manually | Most of the time mkcert (mkcert -install) do not install rootCA on Linux system
  # so bot will copy it manually to your system directory
  echo_process_message "Installing RootCA certificate to '/etc/pki/ca-trust/source/anchors/'"
  echo_empty_line
  sudo cp ${rootca_location}/rootCA.pem /etc/pki/ca-trust/source/anchors/
  echo_success_message "RootCA certificate is installed on your system path"
  echo_empty_line
  echo_process_message "Running the CA updating service for your system '$environment'."
  echo_empty_line
  case $environment in
    "${environment_list[0]}" )
      # Fedora
      if ! command -v update-ca-trust >&2; then
        echo_empty_line
        local msg_01="Can't find the 'update-ca-trust' executable on your system. 'update-ca-trust' is required"
        local msg_02="to run '$app_name'. It's either you choose the wrong operating system from the list or your system "
        local msg_03="doesn't have it installed. Please run 'sudo dnf install update-ca-trust' to install it and try again."
        echo_warning_message_box "ERROR...!" "$msg_01" "$msg_02" "$msg_03"
        echo_error_message "$(echo_blinking "Cannot be continued... '$app_name' is terminated...")"
        echo_empty_line
        exit 1
      fi
      sudo update-ca-trust extract
      echo_empty_line
      ;;
    "${environment_list[1]}" )
      # Debian
      if ! command -v update-ca-certificates >&2; then
        echo_empty_line
        local msg_01="Can't find the 'update-ca-certificates' executable on your system. 'update-ca-certificates' is required"
        local msg_02="to run '$app_name'. It's either you choose the wrong operating system from the list or your system "
        local msg_03="doesn't have it installed. Please run 'sudo apt install update-ca-certificates' to install it and try again. "
        echo_warning_message_box "ERROR...!" "$msg_01" "$msg_02" "$msg_03"
        echo_error_message "$(echo_blinking "Cannot be continued... '$app_name' is terminated...")"
        echo_empty_line
        exit 1
      fi
      sudo update-ca-certificates
      echo_empty_line
      ;;
    "${environment_list[2]}" )
      # MacOS
      # TODO: Running the CA updating service for your system MacOS
        local msg_01="'$app_name' doesn't support your '${environment_list[2]}' operating system yet. "
        local msg_02="Please go to '$app_url'"
        local msg_03="check there is any newer version of '$app_name' that support your system."
        echo_warning_message_box "ERROR...!" "$msg_01" "$msg_02" "$msg_03"
        echo_error_message "$(echo_blinking "Cannot be continued... '$app_name' is terminated...")"
        echo_empty_line
        exit 1
      ;;
    "${environment_list[3]}" )
      # Windows
      # TODO: Running the CA updating service for your system Windows
        local msg_01="'$app_name' doesn't support your '${environment_list[3]}' operating system yet. "
        local msg_02="Please go to '$app_url'"
        local msg_03="check there is any newer version of '$app_name' that support your system."
        echo_warning_message_box "ERROR...!" "$msg_01" "$msg_02" "$msg_03"
        echo_error_message "$(echo_blinking "Cannot be continued... '$app_name' is terminated...")"
        echo_empty_line
        exit 1
      ;;
    *)
      echo_error_message "Invalid operating system('$environment') detected...!"
      echo_empty_line
      echo_error_message "$(echo_blinking "Cannot be continued... '$app_name' is terminated...")"
      echo_empty_line
      exit 1
      ;;
  esac
  echo_success_message "RootCA updating service is successful..."
  echo_empty_line
}


echo_empty_line
print_header
print_copyright
is_run_by_root
get_user_credential
get_operating_system
create_rootca
