# nvim-setup

Personal Neovim configuration using [lazy.nvim](https://github.com/folke/lazy.nvim) as plugin manager.

## Structure

```
~/.config/nvim/
├── init.lua              # Entry point, bootstraps lazy.nvim
├── lua/
│   ├── config/
│   │   ├── options.lua   # Neovim options
│   │   ├── keymaps.lua   # Key mappings
│   │   └── autocmds.lua  # Autocommands
│   └── custom/plugins/   # Plugin configurations
```

## Plugins

| Category | Plugins |
|----------|---------|
| UI | tokyonight.nvim, lualine.nvim, neo-tree.nvim |
| Editor | which-key.nvim, gitsigns.nvim, todo-comments.nvim, mini.nvim |
| LSP | nvim-lspconfig, mason.nvim, typescript-tools.nvim, lazydev.nvim |
| Completion | blink.cmp |
| Search | telescope.nvim |
| Syntax | nvim-treesitter |
| Formatting | conform.nvim |

## Requirements

- Neovim >= 0.9
- Git
- [Nerd Font](https://www.nerdfonts.com/) (optional, for icons)

## Installation

```bash
# Backup existing config
mv ~/.config/nvim ~/.config/nvim.bak

# Clone
git clone https://github.com/gpavlov951/nvim-setup.git ~/.config/nvim

# Start Neovim (plugins install automatically)
nvim
```
