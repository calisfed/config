function setEnv
  set -gx EZA_COLORS "xx=''"
  set -gx EDITOR nvim
  set -gx MESA_WHICH_LLVM "$HOME/.local/llvm17/"
  ## # fish_add_path -g ~/.local/llvm17/bin/
  fish_add_path -g /opt/cuda/bin/
set __EGL_VENDOR_LIBRARY_FILENAMES /usr/share/glvnd/egl_vendor.d/10_nvidia.json
  #set __EGL_VENDOR_LIBRARY_FILENAMES /usr/share/glvnd/egl_vendor.d/50_mesa.json
  set -gx WLR_NO_HARDWARE_CURSORS 1
set -gx GBM_BACKEND nvidia-drm
# set -gx __GLX_VENDOR_LIBRARY_NAME nvidia
# # set -gx ENABLE_VKBASALT 1
# set -gx LIBVA_DRIVER_NAME nvidia

  set -gx LIBVA_DRIVER_NAME radeonsi
  set -gx VDPAU_DRIVER nvidia
  # set -gx WLR_RENDERER vulkan
  set -gx XWAYALND_NO_GLAMOR 1
  set -gx WLR_RENDERER gles2
end

function colorscheme
  #!/usr/bin/fish

# Kanagawa Fish shell theme
# A template was taken and modified from Tokyonight:
# https://github.com/folke/tokyonight.nvim/blob/main/extras/fish_tokyonight_night.fish
set -l foreground DCD7BA normal
set -l selection 2D4F67 brcyan
set -l comment 727169 brblack
set -l red C34043 red
set -l orange FF9E64 brred
set -l yellow C0A36E yellow
set -l green 76946A green
set -l purple 957FB8 magenta
set -l cyan 7AA89F cyan
set -l pink D27E99 brmagenta

# Syntax Highlighting Colors
set -g fish_color_normal $foreground
set -g fish_color_command $cyan
set -g fish_color_keyword $pink
set -g fish_color_quote $yellow
set -g fish_color_redirection $foreground
set -g fish_color_end $orange
set -g fish_color_error $red
set -g fish_color_param $purple
set -g fish_color_comment $comment
set -g fish_color_selection --background=$selection
set -g fish_color_search_match --background=$selection
set -g fish_color_operator $green
set -g fish_color_escape $pink
set -g fish_color_autosuggestion $comment

# Completion Pager Colors
set -g fish_pager_color_progress $comment
set -g fish_pager_color_prefix $cyan
set -g fish_pager_color_completion $foreground
set -g fish_pager_color_description $comment
end

if status is-interactive
   fish_vi_key_bindings
  function fish_prompt -d "Write out the prompt"
    # This shows up as USER@HOST /home/user/ >, with the directory colored
    # $USER and $hostname are set by fish, so you can just use them
    # instead of using `whoami` and `hostname`
    printf '%s@%s %s%s%s
> ' $USER $hostname \
        (set_color $fish_color_cwd) (prompt_pwd) (set_color normal)
end
  setEnv
  # colorscheme
end

if status is-login
  # only enter hyprland if is in tty1
  if [ $(tty) = '/dev/tty1' ] && [ $(whoami) != 'root' ]
    # XDG_CURRENT_DESKTOP=Sway dbus-run-session Hyprland
    exec Hyprland
    # setEnv
  end
end
