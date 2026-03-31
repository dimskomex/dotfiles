# Dependencies

External packages required for this Neovim configuration.

## Required

### Core
- **Neovim** >= 0.12.0
- **git** - Plugin management
- **Nerd Font** - Icons (e.g., Hack Nerd Font)

### Telescope
- **ripgrep** (`rg`) - Live grep
- **fd** - Find files (optional, faster)

## Language Servers

Install via `:Mason` or manually:

| Server | Language | Install |
|--------|----------|---------|
| lua_ls | Lua | `:MasonInstall lua-language-server` |
| clangd | C/C++ | `:MasonInstall clangd` |
| hls | Haskell | `ghcup install hls` |
| bashls | Bash | `:MasonInstall bash-language-server` |
| pylsp | Python | `:MasonInstall python-lsp-server` |
| texlab | LaTeX | `:MasonInstall texlab` |
| rust_analyzer | Rust | `rustup component add rust-analyzer` |
| prolog_lsp | Prolog | SWI-Prolog + `pack_install(lsp_server)` |

## Plugin-Specific

### VimTeX (LaTeX)
```bash
sudo apt install texlive-full latexmk
```

### Markdown Preview
```bash
# Build after plugin install
cd ~/.local/share/nvim/site/pack/core/opt/markdown-preview.nvim/app/
npm install
```
- **Firefox** (or change `mkdp_browser` in config)

### CodeShot (Screenshots)
```sh
curl --proto '=https' --tlsv1.2 -LsSf https://github.com/SergioRibera/sss/releases/download/sss_code/v0.2.0/sss_code-installer.sh | sh
```

## Verify
```
:checkhealth
:Mason
:LspInfo
```
