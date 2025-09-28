# Environment variables
set -x QT_QPA_PLATFORMTHEME gtk2

set -x PATH /home/etanheinmik/repos/swww/target/release/ $PATH
set -x PATH /home/etanheinmik/repos/swww/target/release/swww $PATH
set -x PATH /home/etanheinmik/repos/woomer/target/release/woomer $PATH
set -x PATH /home/etanheinmik/.cargo/bin/ $PATH
set -x PATH /home/etanheinmik/classes/ece391/riscv/bin $PATH

if status is-interactive
  function fish_user_key_bindings
    # Then execute the vi-bindings so they take precedence when there's a conflict.
    # Without --no-erase fish_vi_key_bindings will default to
    # resetting all bindings.
    # The argument specifies the initial mode (insert, "default" or visual).
    fish_vi_key_bindings --no-erase insert
end

  set -U fish_greeting

  # Aliases
  alias h="hyprland"
  alias aur="pikaur"
  alias rebind-caps="sudo kanata -c ~/.config/kanata/config.kbd"
  alias config="git --git-dir=$HOME/Projects/dotfiles.git --work-tree=$HOME"
  alias restart-ashell="pkill ashell ; ashell"
  alias python-venv="source ~/PyVenv/bin/activate.fish"
  alias fzf="fzf --preview 'bat --style=numbers --color=always --line-range :500 {}'"

  # Git check and setup
  if not type -q git
      echo "git not installed, installing..."
      sudo pacman -Sy
      sudo pacman -S git
  end

  # Ensure ~/projects exists
  if not test -d "$HOME/Projects"
      echo "making projects directory..."
      mkdir $HOME/Projects
  end

  # Initialize bare dotfiles repo if missing
  set DOTFILES "$HOME/Projects/dotfiles.git"
  if not test -d $DOTFILES
      echo "init dotfiles bare git repo..."
      git init --bare $DOTFILES
  end

  # Git config for dotfiles
  config config status.showUntrackedFiles no

  # Yay installation
  if not type -q yay
      echo "Yay not installed, installing yay..."
      sudo pacman -Sy
      sudo pacman -S --needed git base-devel
      git clone https://aur.archlinux.org/yay.git
      cd yay
      makepkg -si
  end

  # eza installation
  if not type -q eza
      echo "Eza not installed, installing eza..."
      yay -S eza
  else
    alias ls="eza"
    alias l="eza -l --sort=time"
  end

  # zoxide installation
  if not type -q zoxide
      echo "Zoxide not installed, installing Zoxide..."
      yay -S zoxide-git
  end

  # Zoxide initialization
  zoxide init fish --cmd cd | source
      # Commands to run in interactive sessions can go here

  starship init fish | source
  
  alias cat=bat

  alias ding="pw-play ~/Music/ding.mp3"

  if not pgrep -f kanata > /dev/null
    kanata --cfg ~/.config/kanata/config.kbd & 
  end

  if not pgrep -f hyprland > /dev/null
    command hyprland
  end

end
