{
  enable = true;
  keybindings = {
    "alt + Escape" = "pkill -USR1 -x sxhkd";
    "alt + shift + r" = "bspc {wm -r}";
    "alt + Return" = "alacritty";
    "alt + q" = "bspc node -c";
    "alt + @space" = "rofi -show drun";
    "alt + {Up, Down, Left, Right}" = "bspc node -f {north, south, west, east}";
    "alt + m" = "kill bspwm";
    "alt + f" = "bspc node -t '~fullscreen'";
    "alt + {1-9}" = "bspc desktop -f focused:'^{1-9}'";
    "shift + alt + {1-9}" = "bspc node -d ^{1-9}";
    "alt + shift + e" = "setxkbmap us";
    "alt + shift + s" = "setxkbmap si";
    "alt + s" = "bspc node -g sticky";
    "alt + g" = "bspc node -t floating";
    "alt + t" = "bspc node -t tiled";
  };
}
