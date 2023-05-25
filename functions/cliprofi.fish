function cliprofi
  set -l window (xdotool getactivewindow)
  rofi -modi "clipboard:greenclip print" -show clipboard
  sleep 0.1
  set -l text (xsel -o -b)
  if test "$text" != ""
    xdotool windowactivate --sync $window
    xdotool key --clearmodifiers Shift+Insert
    echo "" | xsel -i -b
  end
end
