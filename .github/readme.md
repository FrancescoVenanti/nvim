# pwnvim

My personal neovim config, forked from [pwnwriter/pwnvim](https://github.com/pwnwriter/pwnvim).

## Install

```bash
git clone https://github.com/YOUR_USERNAME/pwnvim ~/.config/nvim
nvim --headless +"Lazy! sync" +qa
```

## Features

- **Plugin Manager**: lazy.nvim
- **File Explorer**: mini.files
- **Fuzzy Finder**: mini.pick
- **LSP**: Native LSP with blink.cmp
- **Theme**: Catppuccin

## Keybindings

- Leader: `<Space>`
- Find files: `<leader>ff`
- File explorer: `<leader>e`
- Live grep: `<leader>fw`

## Requirements

- Neovim 0.10+
- Git
- A [Nerd Font](https://www.nerdfonts.com/)
- ripgrep (for live grep)

## License

MIT
