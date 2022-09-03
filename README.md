# My Arch linux dotfiles 

```
    _-`````-,           ,- '- .       sotiris@laptop
  .'   .- - |          | - -.  `.     --------------
 /.'  /                     `.   \    OS: Arch Linux x86_64
:/   :      _...   ..._      ``   :   Kernel: 5.19.5-arch1-1
::   :     /._ .`:'_.._\.    ||   :   Packages: 836 (pacman)           
::    `._ ./  ,`  :    \ . _.''   .   Shell: zsh 5.9
`:.      /   |  -.  \-. \_      /     Resolution: 2560x1440
  \:._ _/  .'   .@)  \@) ` `\ ,.'     WM: sway
     _/,--'       .- .\,-.`--`.       Terminal: alacritty
       ,'/''     (( \ `  )            Terminal Font: FiraCode Nerd Font
        /'/'  \    `-'  (             CPU: Intel i5-7200U
         '/''  `._,-----'             Memory: 2.64GiB / 15.55GiB
          ''/'    .,---'              Disk (/): 16G / 30G (55%)
           ''/'      ;:               Disk (/home): 103G / 191G (57%)  
             ''/''  ''/               
               ''/''/''               
                 '/'/'
                  `;
```

## Why I use what I use

### Arch

Mostly because of the customizability and the active community around it.

### Wayland

X11 is really old and bloated. Wayland is not perfect, but every day it gets
better ([wlroots repo](https://gitlab.freedesktop.org/wlroots/wlroots/-/tree/master/))

### Sway

I really don't like the i3 way of managing windows, however sway is right now
the most complete wayland WM. Personally, I prefer the bspwm and dwm behaviour,
but i don't trust river at the moment. Maybe later I will try it.

pros:
- Great multi monitor support
- details like the lid:off event are nice
- customisable

cons:
- i hate selecting where the next window goes, it should be done automatically
  like dwm and bspwm.

### ZSH

I used to snob Zsh and believe Bash is better, but it turns out it's great.
Just don't use oh-my-zsh.

### Alacritty

I really don't have any strong opinions on this one, it looks like alacritty
and kitty are the best terminals right now. I am thinking of moving to st, but
I don't know if it's worth it.

### Neovim

The best text editor currently. Lua works great, treesitter is great, the
plugin community is very active. It really is getting better every day.

I used to prefer Vim but now I find it very finicky, plus I find the version 9
concept weird. Neovim+Lua is much better than Vim+Vimscript.

Also treesitter is great and the native LSP is amazing.

### Thunar

Honestly, I think terminal file managers are a gimmick. I have tried lf and
ranger in the past, however they were really unintuitive.

Nowadays I rarely use it, I do most file managing with cp, mv etc, however
when I need to move some folders around, it's much easier.

### Waybar

Very configurable, really nice, I like the modules. I wish it didn't come with
GTK.

### Chromium

Honestly, firefox is bloated. It's kinda scary how succesfull chrome is,
however it's a really good browser. Used to use ungoogled-chromium, maybe I'll
go back.

### PNPM

NPM, but better. Honestly I don't see why one would use npm anymore. The speed
is really satisfying
