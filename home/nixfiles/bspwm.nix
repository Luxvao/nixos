{
  enable = true;

  settings = {
    border_width = 2;
    split_ratio = 0.5;
    focus_follows_pointer = true;
    pointer_modifier = "mod1";
    automatic_side = "longest_side";
    focused_border_color = "#9a6fd6";
    normal_border_color = "#2f2e30";
    window_gap = 43;
    pointer_motion_interval = "7ms";
  };
  
  extraConfig = ''
    bspc monitor -d I II III IV V VI VII VIII IX
  '';

  startupPrograms = [
    "xsetroot -cursor_name left_ptr"
    "xrandr --output DP-4 --mode 2560x1440 --rate 144"
    "/home/bor/.fehbg"
    "picom"
  ];
}
