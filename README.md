# HoMM3Theme
This repo contains theme files inspired by Heroes of Might & Magic 3.
Currently got my hands on:
- Hyprland
- Waybar
- Yazi (not really)
- Kitty (background only)
- Neovim

## Installation

### General

Extract contents to `~/.config/` directory, i.e. your hyprland config sould be located at:
```
~/.config/hypr/hyprland.conf
```

For some entries this must be sufficient. Others may require more actions to be enabled. For every such theme there is a header below.

### hyprland

In `hyprland.conf` file you can find something like this:
```toml
plugin:imgborders {
    enabled = true
    image = ~/.config/HoMM3Theme/HoMM3ConsoleFrame.png
    sizes = 56,56,56,56 # left, right, top, bottom
    insets = 43,40,40,40 # left, right, top, bottom
    scale = 0.8
    smooth = false
    blur = false
}
```
In order for this lines to take effect, you will need to install the corresponding plugin for hyprland called [imgborders](https://codeberg.org/zacoons/imgborders/). Procees to the instruction provided by the author to install it.

### neovim
Default colorscheme is located in `colorscheme.lua` file. It returns table containing main colors and has `setup()` function that sets colors to the basic highlight groups. Just require it at the end of your `init.lua` or somewhere and call `setup()`:
```lua
require("colorscheme").setup()
```

By default, the background color is black. Use plugins like [transparent.nvim](https://github.com/xiyaowong/transparent.nvim) to make it transparent so you could see your tiled terminal background (here I use kitty and set background there).

`configs` folder contains modules that return config function to be called. For [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) loaded by [lazy.nvim](https://github.com/folke/lazy.nvim) plugin manager it would look something like this:
```lua
{
    "nvim-lualine/lualine.nvim", 
    config = require("configs.lualine")
},
```
