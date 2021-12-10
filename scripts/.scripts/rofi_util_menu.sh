#!/usr/bin/env bash

case "$@" in
    quit)
        exit 0 ;;
    "i3: French study")
        i3-msg "workspace 1; append_layout /home/monk/.config/i3/language-learning.json; exec firefox -new-window www.duolingo.com/dictionary/French; exec emacs ~/Dropbox/Notes/org/knowledgebase/references/20211126051736-ultimate_french_living_language.org; exec okular ~/Documents/Textbooks/ultimate-french-ll.pdf" >> /dev/null
        exit 0
        ;;
    "redshift: Night")
        redshift -PO 4200 >> /dev/null
        exit 0
        ;;
    "redshift: Day")
        redshift -PO 7000 >> /dev/null
        exit 0
        ;;
    "polybar: Restart")
        killall -q polybar
        coproc ( polybar main > /dev/null  2>&1 )
        exit 0
        ;;
    "wallpaper: r/EarthPorn" )
        $HOME/.local/bin/snoowall-cli earthporn >> /dev/null
        ;;
    "wallpaper: r/animewallpaper" )
        $HOME/.local/bin/snoowall-cli animewallpaper >> /dev/null
        ;;
    "wallpaper: Unsplash" )
        coproc ( i3-input -F "exec ~/.local/bin/splashwall %s" -P "keyword: ")
        exit 0
        ;;
    "brightness: Max" )
        xbacklight -set 100
        exit 0
        ;;
    "brightness: Min" )
        xbacklight -set 5
        exit 0
        ;;
esac

echo "i3: French study"
echo "redshift: Night"
echo "redshift: Day"
echo "brightness: Max"
echo "brightness: Min"
echo "polybar: Restart"
echo "wallpaper: r/EarthPorn"
echo "wallpaper: r/animewallpaper"
echo "wallpaper: Unsplash"
