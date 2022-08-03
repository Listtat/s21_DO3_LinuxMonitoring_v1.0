#!/bin/bash

function print {
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