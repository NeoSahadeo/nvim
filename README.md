# My MEConfig

**Package Manager: Lazy.**

## Getting Started (No nvim config)

```bash
git clone --depth=1 https://github.com/NeoSahadeo/nvim/
mv nvim ~/.config/
```

## Getting Started (Exisiting nvim config)

Run this (or don't)

```bash
git clone --depth=1 https://github.com/NeoSahadeo/nvim/
mv ~/.config/nvim ~/.config/nvim.old
mv nvim ~/.config/
```

---

The default theme will probably have no background.
If you want it to, find the `init.lua` file, then
look for the current theme. Go to THAT plugin folder
and find the `transparent` keyword.

### If it doesn't launch

Then you need to bootstrap the program.
So disable everything except lazy

```lua
-- require("config.options")
-- require("config.keymaps")
require("config.lazy")
```

Rerun nvim to install Lazy.
Then renable le stuff!

```lua
require("config.options")
require("config.keymaps")
require("config.lazy")
```
# Keybinds

- `ctrl`+`k` introspect into function
- `ctrl`+`x` swap to previous file
- `ctrl`+`a` select all
- `ctrl`+`f` is telescope
- `ctrl`+`p` is neo-tree preview
- `ctrl`+`s` save file
- `alt`+`j` move selected up
- `alt`+`k` move selected down
- `shift`+`<` indent left
- `shift`+`>` indent right

- `space`+`p` open image (might not work)


# Plugin List

- NeoSahadeo/image-preview.nvim
- NMAC427/guess-indent.nvim
- catppuccin/nvim
- hrsh7th/nvim-cmp
- hrsh7th/cmp-nvim-lsp
- hrsh7th/cmp-buffer
- hrsh7th/cmp-path
- L3MON4D3/LuaSnip
- mistricky/codesnap.nvim
- scottmckendry/cyberdream.nvim
- nvimdev/dashboard-nvim
- sainnhe/everforest
- voldikss/vim-floaterm
- mhartington/formatter.nvim
- lewis6991/gitsigns.nvim
- lukas-reineke/indent-blankline.nvim
- rebelot/kanagawa.nvim
- neovim/nvim-lspconfig
- williamboman/mason.nvim
- williamboman/mason-lspconfig.nvim
- nvim-lualine/lualine.nvim
- EdenEast/nightfox.nvim
- nvim-tree/nvim-tree.lua
- nvim-tree/nvim-web-devicons
- ray-x/lsp_signature.nvim
- nvim-telescope/telescope.nvim
- nvim-treesitter/nvim-treesitter


# Authors

- Neo Sahadeo
