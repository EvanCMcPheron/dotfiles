export QT_QPA_PLATFORMTHEME=gtk2

export PATH=/home/etanheinmik/repos/swww/target/release/:$PATH
export PATH=/home/etanheinmik/repos/swww/target/release/swww:$PATH
export PATH=/home/etanheinmik/repos/woomer/target/release/woomer:$PATH
export PATH=/home/etanheinmik/.cargo/bin/:$PATH
export PATH=/home/etanheinmik/classes/ece391/riscv/bin:$PATH

alias rebind-caps="sudo kanata -c ~/.config/kanata/config.kbd"

command -v git &> /dev/null

if [ $? -ne 0 ]; then
  echo "git not installed, installing..."
  sudo pacman -Sy;
  sudo pacman -S git;
fi;

if [ ! -d "$HOME/Projects" ]; then echo "making projects directory..."
  mkdir $HOME/Projects;
fi;

DOTFILES=$HOME/Projects/dotfiles.git

if [ ! -d $DOTFILES ]; then
  echo "init dotfiles bare git repo..."
  git init --bare $DOTFILES
fi;

alias config='git --git-dir=$DOTFILES --work-tree=$HOME'

config config status.showUntrackedFiles no

if ! command -v yay &> /dev/null; then
  echo "Yay not installed, installing yay..."
  sudo pacman -Sy
  sudo pacman -S --needed git base-devel
  git clone https://aur.archlinux.org/yay.git
  cd yay
  makepkg -si
fi

if ! command -v eza &> /dev/null; then
  echo "Eza not installed, installing eza..."
  yay -S eza
fi

alias ls=eza
alias l='eza -l'

if ! command -v zoxide &> /dev/null; then
  echo "Zoxide not installed, installing Zoxide..."
  yay -S zoxide-git
fi

eval "$(zoxide init --cmd cd bash)"

alias restart-ashell="pkill ashell ; ashell"
alias python-venv="source ~/PyVenv/bin/activate"
