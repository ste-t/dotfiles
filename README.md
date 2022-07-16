# My dotfiles

Main programs used:

-   [AwesomeWM](https://awesomewm.org) (Window Manager)
-   [Polybar](https://github.com/polybar/polybar#readme) (Status bar)
-   [Rofi](https://github.com/davatorium/rofi#--rofi) (App launcher)
-   [Kitty](https://sw.kovidgoyal.net/kitty) (Terminal emulator)
-   [Starship](https://starship.rs) (Custom shell prompt)

Minor programs:

-   [Dunst](https://github.com/dunst-project/dunst#readme) (Notification daemon)
-   [Feh](https://github.com/derf/feh#readme) (Wallpaper setter)
-   [Ly](https://github.com/fairyglade/ly#readme) (TUI Display manager)
    -   There are no config files for it here, but [check this out](https://github.com/IlmastroStefanuzzo/tty-ly-colors).
-   [LSD](https://github.com/Peltoche/lsd#readme) (Prettier ls)
-   [Nerdfetch](https://github.com/ThatOneCalculator/NerdFetch#readme) (Fetch program)

Make sure you install [Fira Code Nerd Fonts](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/FiraCode#readme). On Arch you can use the AUR: `yay -S nerd-fonts-fira-code`.

# Installation

> If you want to straight up copy all the dotfiles (**<u>never recommended</u>**).

-   Make sure you installed all the programs listed above as well as `git` (but you do already have it, right?).
-   Install [GNU Stow](https://www.gnu.org/software/stow/manual/stow.html) with your package manager (e.g.: `pacman -S stow`).
-   Clone the repo into `~/.dotfiles`.
    ```sh
    git clone https://github.com/IlmastroStefanuzzo/dotfiles ~/.dotfiles
    ```
-   Or update if you've already cloned it.
    ```sh
    cd ~/.dotfiles && git pull
    ```
-   Stow will automagically symlink all the files in the correct directories.
    ```sh
    cd ~/.dotfiles  # Important or you'll make a mess
    stow .
    ```
    -   To better understand what's happening, [check this video out](https://youtu.be/CxAT1u8G7is).
-   If you get any errors saying the files already exist, remove them or, even better, rename them to have a backup.
    ```sh
    mv ~/.bashrc ~/.bashrc.bak
    ```
-   Done!
