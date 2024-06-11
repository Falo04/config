#! /bin/bash
NUMBER=0

if ! [[ "$#" -eq 2 ]]; then
    echo "Usage: $0 <paramter>" 
    echo "Paramater:"
    echo -e "\t -n <number>"
    echo -e "\t -d <default> | mac, win"
    exit 1
fi

if [[ "$1" == "-n" ]]; then
    # check if input is integer
    if ! [[ "$2" =~ ^[0-9]+$ ]]; then
        echo "Error: The parameter must be number."
        exit 1
    fi
    NUMBER="$2"
fi

if [[ "$1" == "-d" ]]; then
    case "$2" in
        "mac") NUMBER=0;;
        "win") NUMBER=40;;
        *) echo "Error: the default value is not supported"; exit 1;;
    esac
fi

echo "Following command will executed:"
echo "defaults write com.knollsoft.Rectangle screenEdgeGapTop -int $NUMBER"
defaults write com.knollsoft.Rectangle screenEdgeGapTop -int "$NUMBER"

APP_NAME="Rectangle"

osascript -e "tell application \"$APP_NAME\" to quit"
echo "Sleep for 1 sec"
sleep 1
open -a "$APP_NAME"
echo "Think it was a success :)"
