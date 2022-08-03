#!/bin/bash

# function print {
#     echo $#
#     echo -e "${left_back_color}${left_text_color}HOSTNAME${default_colors} = ${right_back_color}${right_text_color}$HOSTNAME${default_colors}"
#     echo -e "${left_back_color}${left_text_color}TIMEZONE${default_colors} = ${right_back_color}${right_text_color}${right_back_color}${right_text_color}$TIMEZONE${default_colors}"
#     echo -e "${left_back_color}${left_text_color}USER${default_colors} = ${right_back_color}${right_text_color}$USER${default_colors}"
#     echo -e "${left_back_color}${left_text_color}OS${default_colors} = ${right_back_color}${right_text_color}$OS${default_colors}"
#     echo -e "${left_back_color}${left_text_color}DATE${default_colors} = ${right_back_color}${right_text_color}$DATE${default_colors}"
#     echo -e "${left_back_color}${left_text_color}UPTIME${default_colors} = ${right_back_color}${right_text_color}$UPTIME${default_colors}"
#     echo -e "${left_back_color}${left_text_color}UPTIME_SEC${default_colors} = ${right_back_color}${right_text_color}$UPTIME_SEC${default_colors}"
#     echo -e "${left_back_color}${left_text_color}IP${default_colors} = ${right_back_color}${right_text_color}$IP${default_colors}"
#     echo -e "${left_back_color}${left_text_color}MASK${default_colors} = ${right_back_color}${right_text_color}$MASK${default_colors}"
#     echo -e "${left_back_color}${left_text_color}GATEWAY${default_colors} = ${right_back_color}${right_text_color}$GATEWAY${default_colors}"
#     echo -e "${left_back_color}${left_text_color}RAM_TOTAL${default_colors} = ${right_back_color}${right_text_color}$RAM_TOTAL${default_colors}"
#     echo -e "${left_back_color}${left_text_color}RAM_USED${default_colors} = ${right_back_color}${right_text_color}$RAM_USED${default_colors}"
#     echo -e "${left_back_color}${left_text_color}RAM_FREE${default_colors} = ${right_back_color}${right_text_color}$RAM_FREE${default_colors}"
#     echo -e "${left_back_color}${left_text_color}SPACE_ROOT${default_colors} = ${right_back_color}${right_text_color}$SPACE_ROOT${default_colors}"
#     echo -e "${left_back_color}${left_text_color}SPACE_ROOT_USED${default_colors} = ${right_back_color}${right_text_color}$SPACE_ROOT_USED${default_colors}"
#     echo -e "${left_back_color}${left_text_color}SPACE_ROOT_FREE${default_colors} = ${right_back_color}${right_text_color}$SPACE_ROOT_FREE${default_colors}"
# }

function print {
    get_color $1
    left_back_color="\033[4$?m"
    get_color $2
    left_text_color="\033[3$?m"
    get_color $3
    right_back_color="\033[4$?m"
    get_color $4
    right_text_color="\033[3$?m"
    default_colors="\033[37m\033[0m"
    echo -e "${left_back_color}${left_text_color}HOSTNAME${default_colors} = ${right_back_color}${right_text_color}$HOSTNAME${default_colors}"
    echo -e "${left_back_color}${left_text_color}TIMEZONE${default_colors} = ${right_back_color}${right_text_color}${right_back_color}${right_text_color}$TIMEZONE${default_colors}"
    echo -e "${left_back_color}${left_text_color}USER${default_colors} = ${right_back_color}${right_text_color}$USER${default_colors}"
    echo -e "${left_back_color}${left_text_color}OS${default_colors} = ${right_back_color}${right_text_color}$OS${default_colors}"
    echo -e "${left_back_color}${left_text_color}DATE${default_colors} = ${right_back_color}${right_text_color}$DATE${default_colors}"
    echo -e "${left_back_color}${left_text_color}UPTIME${default_colors} = ${right_back_color}${right_text_color}$UPTIME${default_colors}"
    echo -e "${left_back_color}${left_text_color}UPTIME_SEC${default_colors} = ${right_back_color}${right_text_color}$UPTIME_SEC${default_colors}"
    echo -e "${left_back_color}${left_text_color}IP${default_colors} = ${right_back_color}${right_text_color}$IP${default_colors}"
    echo -e "${left_back_color}${left_text_color}MASK${default_colors} = ${right_back_color}${right_text_color}$MASK${default_colors}"
    echo -e "${left_back_color}${left_text_color}GATEWAY${default_colors} = ${right_back_color}${right_text_color}$GATEWAY${default_colors}"
    echo -e "${left_back_color}${left_text_color}RAM_TOTAL${default_colors} = ${right_back_color}${right_text_color}$RAM_TOTAL${default_colors}"
    echo -e "${left_back_color}${left_text_color}RAM_USED${default_colors} = ${right_back_color}${right_text_color}$RAM_USED${default_colors}"
    echo -e "${left_back_color}${left_text_color}RAM_FREE${default_colors} = ${right_back_color}${right_text_color}$RAM_FREE${default_colors}"
    echo -e "${left_back_color}${left_text_color}SPACE_ROOT${default_colors} = ${right_back_color}${right_text_color}$SPACE_ROOT${default_colors}"
    echo -e "${left_back_color}${left_text_color}SPACE_ROOT_USED${default_colors} = ${right_back_color}${right_text_color}$SPACE_ROOT_USED${default_colors}"
    echo -e "${left_back_color}${left_text_color}SPACE_ROOT_FREE${default_colors} = ${right_back_color}${right_text_color}$SPACE_ROOT_FREE${default_colors}"
    print_info_about_color $default
}

function get_color {
    res=0

    case "$1" in
        1) res=7 ;;
        2) res=1 ;;
        3) res=2 ;;
        4) res=4 ;;
        5) res=5 ;;
        6) res=0 ;;
    esac

    return $res
}

function print_info_about_color {
    echo -e "\nColumn 1 background = $(if [[ $1 -eq 1 ]] ; then echo "defulat (black)" ; else echo -n ${column1_background}; print_color_text ${column1_background}; fi)"
    echo "Column 1 font color = $(if [[ $1 -eq 1 ]] ; then echo "defulat (white)" ; else echo -n ${column1_font_color}; print_color_text ${column1_font_color}; fi) "
    echo "Column 2 background = $(if [[ $1 -eq 1 ]] ; then echo "defulat (black)" ; else echo -n ${column2_background}; print_color_text ${column2_background}; fi)"
    echo "Column 2 font color = $(if [[ $1 -eq 1 ]] ; then echo "defulat (white)" ; else echo -n ${column2_font_color}; print_color_text ${column2_font_color}; fi)"
}

function print_color_text {
    case "$1" in
        1) echo " (white)" ;;
        2) echo " (red)" ;;
        3) echo " (green)" ;;
        4) echo " (blue)" ;;
        5) echo " (purple)" ;;
        6) echo " (black)" ;;
    esac
}