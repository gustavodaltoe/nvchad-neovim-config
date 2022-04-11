# My nvchad Neovim config

Install [nvchad](https://nvchad.github.io/getting-started/setup)

### Backup current config

`mv ~/.config/nvim ~/.config/NVIM.BAK`

### Clone my config and install plugins

```
git clone https://github.com/gustavodaltoe/nvchad-neovim-config.git ~/.config/nvim/lua/custom --depth 1
nvim +PackerSync
```

### Plugins

- Github Copilot
- null-ls
- nvim-lsp-installer

**Configure eslint, prettier and tsserver**

Using null-ls for linting and formating.

- Install [prettierd](https://github.com/fsouza/prettierd). It's faster than prettier.
- Install [eslint_d](https://github.com/mantoni/eslint_d.js/). Also faster than eslint.

**Configure github copilot**

`:Copilot setup`

**See if everything is ok**

`:CheckHealth`
