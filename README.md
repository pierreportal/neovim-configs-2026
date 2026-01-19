# Neovim Configuration Guide

This is a modern Neovim configuration based on [Kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim), customized for development with enhanced features.

## 📦 Plugin Manager

**[lazy.nvim](https://github.com/folke/lazy.nvim)** - Modern plugin manager with lazy loading for fast startup times.

- Check plugin status: `:Lazy`
- Update plugins: `:Lazy update`
- Press `?` in the Lazy UI for help

---

## 🎨 Appearance & UI

### Color Scheme
**[tokyonight.nvim](https://github.com/folke/tokyonight.nvim)** - Clean, modern theme with multiple variants
- Current: `tokyonight-night`
- Change variants: `:Telescope colorscheme`

### Icons & Fonts
- **Nerd Font enabled**: Icons displayed throughout the UI
- Install a [Nerd Font](https://www.nerdfonts.com/) in your terminal for best experience

### Status Line
**[mini.statusline](https://github.com/echasnovski/mini.nvim)** - Minimal, fast statusline showing:
- Mode indicator
- File info
- Git status
- Cursor position (line:column)

### Indent Guides
**[indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)** - Visual indent guides
- Automatically shows indentation levels
- Helps with code structure visibility

---

## 🔍 Fuzzy Finding & Navigation

### Telescope
**[telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)** - Powerful fuzzy finder

#### Core Keybindings:
| Key                | Action             | Description                  |
| ------------------ | ------------------ | ---------------------------- |
| `<leader>sf`       | Search Files       | Find files in project        |
| `<leader>sg`       | Search Grep        | Live grep in files           |
| `<leader>sw`       | Search Word        | Find current word            |
| `<leader>sh`       | Search Help        | Search help documentation    |
| `<leader>sk`       | Search Keymaps     | Browse all keybindings       |
| `<leader>sd`       | Search Diagnostics | Show LSP diagnostics         |
| `<leader>sr`       | Search Resume      | Resume last search           |
| `<leader>s.`       | Search Recent      | Recent files                 |
| `<leader>sn`       | Search Nvim        | Search Neovim config files   |
| `<leader><leader>` | Buffers            | Switch between open buffers  |
| `<leader>/`        | Buffer Search      | Fuzzy search in current file |
| `<leader>s/`       | Open Files Search  | Grep in open files           |

#### Inside Telescope:
- `<C-n>` / `<C-p>` - Navigate results
- `<C-/>` (Insert) or `?` (Normal) - Show help
- `<CR>` - Open selection
- `<C-x>` - Open in horizontal split
- `<C-v>` - Open in vertical split

### File Explorer
**[neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)** - File tree sidebar

| Key | Action               |
| --- | -------------------- |
| `\` | Toggle file tree     |
| `a` | Add file/folder      |
| `d` | Delete               |
| `r` | Rename               |
| `y` | Copy to clipboard    |
| `x` | Cut to clipboard     |
| `p` | Paste from clipboard |
| `?` | Show all commands    |

---

## 💻 LSP (Language Server Protocol)

### Setup
**[nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)** + **[mason.nvim](https://github.com/williamboman/mason.nvim)**
- Automatic LSP server installation
- Check status: `:Mason`
- Health check: `:checkhealth mason`

### Configured Language Servers:
- **lua_ls** - Lua (with Neovim API support)
- **pyright** - Python
- **ts_ls** - TypeScript/JavaScript
- **jsonls** - JSON
- **html** - HTML
- **cssls** - CSS
- **rust_analyzer** - Rust (with Clippy integration)

### LSP Keybindings:
| Key          | Action               | Description                     |
| ------------ | -------------------- | ------------------------------- |
| `gd`         | Go to Definition     | Jump to where symbol is defined |
| `gr`         | Go to References     | Find all references             |
| `gI`         | Go to Implementation | Jump to implementation          |
| `gD`         | Go to Declaration    | Jump to declaration             |
| `<leader>D`  | Type Definition      | Show type definition            |
| `<leader>ds` | Document Symbols     | List symbols in file            |
| `<leader>ws` | Workspace Symbols    | List symbols in project         |
| `<leader>rn` | Rename               | Rename symbol                   |
| `<leader>ca` | Code Action          | Show code actions               |
| `<leader>th` | Toggle Hints         | Toggle inlay hints              |
| `K`          | Hover                | Show documentation              |

### Diagnostics:
| Key         | Action              |
| ----------- | ------------------- |
| `<leader>q` | Quickfix List       | Open diagnostics list  |
| `[d`        | Previous Diagnostic | Jump to previous issue |
| `]d`        | Next Diagnostic     | Jump to next issue     |

---

## ✍️ Code Editing

### Autocompletion
**[nvim-cmp](https://github.com/hrsh7th/nvim-cmp)** - Completion engine

| Key               | Action                               |
| ----------------- | ------------------------------------ |
| `<C-n>`           | Next item                            |
| `<C-p>`           | Previous item                        |
| `<C-y>`           | Accept completion                    |
| `<C-Space>`       | Trigger completion                   |
| `<C-b>` / `<C-f>` | Scroll docs                          |
| `<C-l>`           | Jump to next snippet placeholder     |
| `<C-h>`           | Jump to previous snippet placeholder |

**Sources:**
- LSP completions
- File path completions
- Snippet completions
- Lua API completions (for Neovim config)

### Snippets
**[LuaSnip](https://github.com/L3MON4D3/LuaSnip)** - Snippet engine
- Integrated with nvim-cmp
- Navigate with `<C-l>` and `<C-h>`

### Auto-pairs
**[nvim-autopairs](https://github.com/windwp/nvim-autopairs)** - Auto-close brackets, quotes, etc.
- Automatically closes `()`, `[]`, `{}`, `""`, `''`
- Integrated with completion

### Surround
**[mini.surround](https://github.com/echasnovski/mini.nvim)** - Add/delete/change surroundings

| Key     | Action           | Example         |
| ------- | ---------------- | --------------- |
| `saiw)` | Add surround     | word → (word)   |
| `sd'`   | Delete surround  | 'text' → text   |
| `sr)'`  | Replace surround | (text) → 'text' |

### Text Objects
**[mini.ai](https://github.com/echasnovski/mini.nvim)** - Enhanced text objects
- `va)` - Select around parentheses
- `vi"` - Select inside quotes
- `yinq` - Yank inside next quote
- `ci'` - Change inside single quotes

---

## 🎨 Formatting

### Conform.nvim
**[conform.nvim](https://github.com/stevearc/conform.nvim)** - Async formatting

| Key         | Action        |
| ----------- | ------------- |
| `<leader>f` | Format buffer |

**Format on save:** Enabled automatically (except for C/C++)

**Configured Formatters:**
- **stylua** - Lua formatting
- **rustfmt** - Rust formatting

Add more formatters in the `formatters_by_ft` table in init.lua.

---

## 🔍 Linting

**[nvim-lint](https://github.com/mfussenegger/nvim-lint)** - Async linting

**Configured Linters:**
- **markdownlint** - Markdown files

Runs automatically on:
- File open
- File save
- Leaving insert mode

Add more linters in lua/kickstart/plugins/lint.lua.

---

## 🐛 Debugging (DAP)

**[nvim-dap](https://github.com/mfussenegger/nvim-dap)** - Debug Adapter Protocol support
**[nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui)** - Beautiful debugging UI

### Debug Keybindings:
| Key         | Action                     |
| ----------- | -------------------------- |
| `<F5>`      | Start/Continue debugging   |
| `<F1>`      | Step into                  |
| `<F2>`      | Step over                  |
| `<F3>`      | Step out                   |
| `<F7>`      | Toggle debug UI            |
| `<leader>b` | Toggle breakpoint          |
| `<leader>B` | Set conditional breakpoint |

**Configured Debuggers:**
- **delve** - Go debugging
- **codelldb** - Rust debugging
- Add more debug adapters via `:Mason`

---

## 🦀 Rust Development

### Rustaceanvim
**[rustaceanvim](https://github.com/mrcjkb/rustaceanvim)** - Enhanced Rust development experience

**Features:**
- Advanced rust-analyzer integration
- Clippy linting on save
- Inlay type hints and lifetime hints
- Cargo integration
- Proc macro support

### Rust Keybindings:
| Key          | Action           | Description                      |
| ------------ | ---------------- | -------------------------------- |
| `<leader>rr` | Runnables        | Show and run Rust code/tests     |
| `<leader>rd` | Debuggables      | Show and debug Rust code/tests   |
| `<leader>ca` | Code Action      | Rust-specific code actions       |
| `K`          | Hover Actions    | Enhanced hover with quick actions|
| `gd`         | Go to Definition | Jump to definition               |
| `gr`         | References       | Find all references              |

### Crates.nvim
**[crates.nvim](https://github.com/saecki/crates.nvim)** - Cargo.toml dependency management

**Features:**
- Version information for dependencies
- Update notifications
- Quick actions for managing crates
- Automatically activates in Cargo.toml files

### Rust Workflow:
1. **Open Rust file** - rust-analyzer starts automatically
2. **See type hints** - Inlay hints show types and lifetimes
3. **Run code** - `<leader>rr` to see and run tests/binaries
4. **Debug** - `<leader>rd` to debug, then use `<F5>` to start
5. **Format** - `<leader>f` or auto-format on save
6. **Clippy** - Diagnostics shown inline automatically

---

## 🎯 Git Integration

### Gitsigns
**[gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)** - Git decorations and commands

**Visual indicators:** Shows added/modified/deleted lines in the gutter

### Git Keybindings:
| Key          | Action         | Description                 |
| ------------ | -------------- | --------------------------- |
| `]c`         | Next Hunk      | Jump to next git change     |
| `[c`         | Previous Hunk  | Jump to previous git change |
| `<leader>hs` | Stage Hunk     | Stage current hunk          |
| `<leader>hr` | Reset Hunk     | Reset current hunk          |
| `<leader>hS` | Stage Buffer   | Stage entire file           |
| `<leader>hR` | Reset Buffer   | Reset entire file           |
| `<leader>hu` | Undo Stage     | Undo stage hunk             |
| `<leader>hp` | Preview Hunk   | Preview changes             |
| `<leader>hb` | Blame Line     | Show git blame              |
| `<leader>hd` | Diff This      | Show diff                   |
| `<leader>hD` | Diff This ~    | Show diff against HEAD      |
| `<leader>td` | Toggle Deleted | Toggle deleted lines        |

Visual mode:
- `<leader>hs` - Stage selected lines
- `<leader>hr` - Reset selected lines

---

## 🌳 Syntax Highlighting

**[nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)** - Advanced syntax highlighting

**Features:**
- Semantic syntax highlighting
- Smart indentation
- Code folding
- Incremental selection

**Installed Parsers:**
- bash, c, diff, html, lua, luadoc, markdown, vim, vimdoc, query
- rust, toml (for Rust development)
- Auto-installs parsers for new file types

**Commands:**
- `:TSInstall <language>` - Install parser
- `:TSUpdate` - Update all parsers
- `:TSModuleInfo` - Check what's enabled

---

## 🎵 Special: TidalCycles

**[vim-tidal](https://github.com/tidalcycles/vim-tidal)** - Live coding with TidalCycles

For live coding music patterns. Located in lua/custom/plugins/vim-tidal.lua.

---

## 🔧 Utilities

### Which-key
**[which-key.nvim](https://github.com/folke/which-key.nvim)** - Keymap hints
- Shows available keybindings as you type
- Displays after 300ms delay
- Shows key groups (like `<leader>s` for search)

### Todo Comments
**[todo-comments.nvim](https://github.com/folke/todo-comments.nvim)** - Highlight TODO, FIXME, etc.
- Highlights special comments
- Search todos: `:TodoTelescope`

**Keywords:**
- `TODO:` - Things to do
- `FIXME:` - Things to fix
- `HACK:` - Hacky solutions
- `WARN:` - Warnings
- `PERF:` - Performance notes
- `NOTE:` - General notes

### Vim-sleuth
**[vim-sleuth](https://github.com/tpope/vim-sleuth)** - Auto-detect indentation
- Automatically detects tabs vs spaces
- Detects indent width from file

### Fidget
**[fidget.nvim](https://github.com/j-hui/fidget.nvim)** - LSP progress UI
- Shows LSP loading status in corner
- Non-intrusive notifications

---

## ⚙️ Key Settings

### Editor Options:
- **Line numbers:** Enabled (absolute + relative)
- **Mouse:** Enabled for resizing
- **Clipboard:** Synced with system
- **Undo:** Persistent undo history
- **Search:** Smart case-insensitive
- **Splits:** Open right and below
- **Scrolloff:** Keep 10 lines visible above/below cursor
- **Sign column:** Always visible
- **Update time:** 250ms (faster for which-key)

### Leader Keys:
- **Leader:** `<Space>`
- **Local Leader:** `<Space>`

---

## 🚀 Quick Start

### First Time Setup:
1. **Open Neovim:** All plugins will auto-install
2. **Wait for completion:** Watch the Lazy.nvim window
3. **Run health check:** `:checkhealth`
4. **Install LSP servers:** Open a file → LSP auto-installs via Mason
5. **Check Mason:** `:Mason` to see available tools

### Daily Workflow:
1. **Open file explorer:** Press `\`
2. **Find files:** `<leader>sf`
3. **Search in files:** `<leader>sg`
4. **Edit code:** Autocompletion with `<C-n>`
5. **Format:** `<leader>f`
6. **Git changes:** `<leader>hs` to stage hunks

### Window Navigation:
| Key     | Action               |
| ------- | -------------------- |
| `<C-h>` | Move to left window  |
| `<C-j>` | Move to lower window |
| `<C-k>` | Move to upper window |
| `<C-l>` | Move to right window |

### Terminal:
| Key          | Action             |
| ------------ | ------------------ |
| `<Esc><Esc>` | Exit terminal mode |

### Other:
| Key     | Action                  |
| ------- | ----------------------- |
| `<Esc>` | Clear search highlights |

---

## 📁 Configuration Structure

```
~/.config/nvim/
├── init.lua                  # Main configuration file
├── lazy-lock.json            # Plugin version lock file
├── lua/
│   ├── custom/
│   │   └── plugins/
│   │       ├── init.lua      # Custom plugin loader
│   │       ├── rust.lua      # Rust development plugins
│   │       └── vim-tidal.lua # TidalCycles plugin
│ └── kickstart/
│ ├── health.lua # Health check
│ └── plugins/
│ ├── autopairs.lua # Auto-close brackets
│ ├── debug.lua # DAP debugging
│ ├── gitsigns.lua # Git keymaps
│ ├── indent_line.lua # Indent guides
│ ├── lint.lua # Linting setup
│ └── neo-tree.lua # File explorer

---

## 🔧 Customization

### Adding New LSP Servers:
Edit init.lua around line 625:
```lua
local servers = {
  pyright = {},       -- Python
  ts_ls = {},         -- TypeScript
  rust_analyzer = {}, -- Rust (already configured)
  gopls = {},         -- Add Go
}
```

### Adding Formatters:
Edit init.lua around line 710:
```lua
formatters_by_ft = {
  lua = { 'stylua' },
  rust = { 'rustfmt' },    -- Already configured
  python = { 'black', 'isort' },
  javascript = { 'prettier' },
}
```

### Adding Linters:
Edit lua/kickstart/plugins/lint.lua:
```lua
lint.linters_by_ft = {
  markdown = { 'markdownlint' },
  python = { 'pylint' },
  javascript = { 'eslint' },
}
```
### Adding Custom Plugins:
Create a new file in plugins or add to lua/custom/plugins/init.lua:
```lua
return {
  {
    'your-plugin/repo',
    config = function()
      -- configuration here
    end,
  },
}
```

## Resources
- Neovim Help: :help or <leader>sh
- Plugin Help: :help <plugin-name>
- Kickstart Repo: https://github.com/nvim-lua/kickstart.nvim
- Lua Guide: :help lua-guide
- Learn Lua: https://learnxinyminutes.com/docs/lua/
- LSP Config: :help lspconfig-all
- Telescope: :help telescope.nvim
  
## Troubleshooting

Plugin Issues:
```
:Lazy clean      " Remove unused plugins
:Lazy restore    " Restore from lockfile
:Lazy update     " Update all plugins
```

LSP Issues:
```
:LspInfo         " Show LSP status
:Mason           " Manage LSP servers
:checkhealth     " System health check
:checkhealth mason
```

Clear Cache:
```
rm -rf ~/.local/share/nvim
rm -rf ~/.local/state/nvim
```

## Learning Tips
- Use `:Tutor` - Built-in Neovim tutorial
- Press `<leader>sh` - Search help documentation
- Use `?` in Lazy/Mason - Context-specific help
- Read `:help` pages - Best documentation available
- Type slowly with `<leader>` - Which-key shows available commands