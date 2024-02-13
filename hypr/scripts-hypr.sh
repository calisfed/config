#!/usr/bin/sh


Help()
{
echo 
echo "-steam   minimize steam"
echo
}



Steam()
{
if [ "$(hyprctl activewindow -j | jq -r ".class")" = "Steam" ]; then
    xdotool getactivewindow windowunmap
else
    hyprctl dispatch killactive ""
fi
}



while getopts ":hs" option; do
   case $option in
      h) # display Help
         Help
         exit;;
      s) # minimize steam
         Steam
         exit;;
      n) # Enter a name
         Name=$OPTARG;;
     \?) # Invalid option
         echo "Error: Invalid option"
         exit;;
   esac
done


