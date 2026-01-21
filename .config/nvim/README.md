# Neovim Configuration

A beautiful, powerful, and highly customizable Neovim configuration written in Lua, using lazy.nvim as the plugin manager.

## ✨ Features

- 🚀 **Fast Startup** - Uses lazy.nvim for on-demand loading, fast startup speed
- 🎨 **Multiple Theme Support** - Built-in multiple themes (Catppuccin, Gruvbox, Kanagawa, Sonokai, Tokyonight)
- 🔧 **LSP Support** - Complete Language Server Protocol support with automatic installation and configuration
- 📝 **Code Completion** - Intelligent code completion based on blink.cmp
- 🎯 **Efficient Navigation** - Snacks comprehensive suite, Telescope file search, nvim-tree file tree, Flash/Hop quick jump
- 💅 **Beautiful Interface** - Modern UI components like Bufferline, Lualine, Snacks Dashboard
- ⚡ **Performance Optimized** - Carefully optimized configuration ensuring smooth user experience

## 📋 Prerequisites

- Neovim >= 0.10.0
- Git
- A terminal that supports Nerd Fonts (recommended)

## 🚀 Installation

### Quick Installation

```bash
# Backup existing configuration (if exists)
mv ~/.config/nvim ~/.config/nvim.bak

# Clone configuration
git clone <your-repo-url> ~/.config/nvim

# Start Neovim, plugins will be automatically installed
nvim
```

### Manual Installation

1. Copy configuration files to `~/.config/nvim/` directory
2. Start Neovim, lazy.nvim will automatically install and load plugins

## 📁 Directory Structure

```
nvim/
├── init.lua                 # Main entry file
├── lua/
│   ├── core/                # Core configuration
│   │   ├── commands.lua    # Custom commands
│   │   ├── keysmap.lua     # Key mappings
│   │   ├── lazy.lua        # Plugin manager configuration
│   │   └── options.lua     # Neovim options configuration
│   ├── themes/             # Theme configuration
│   │   ├── catppuccin.lua  # Catppuccin theme
│   │   ├── gruvbox.lua     # Gruvbox theme
│   │   ├── kanagawa.lua    # Kanagawa theme
│   │   ├── sonokai.lua     # Sonokai theme
│   │   └── tokyonight.lua  # Tokyonight theme
│   └── plugins/            # Plugin configuration
│       ├── blink.lua       # Code completion
│       ├── bufferline.lua  # Buffer tab bar
│       ├── flash.lua       # Quick jump
│       ├── gitsigns.lua    # Git status display
│       ├── grug-far.lua    # Find and replace
│       ├── hop.lua         # Quick jump
│       ├── indent-blankline.lua # Indent lines
│       ├── lspsaga.lua     # LSP UI
│       ├── lualine.lua     # Status bar
│       ├── mason.lua       # LSP installer
│       ├── noice.lua       # Command line/message UI enhancement
│       ├── none-ls.lua     # Code formatting
│       ├── nvim-autopairs.lua # Auto pairs
│       ├── nvim-surround.lua  # Surround operations
│       ├── nvim-tree.lua   # File tree
│       ├── nvim-treesitter.lua # Syntax highlighting
│       ├── smear-cursor.lua # Cursor animation
│       ├── snacks.lua      # Comprehensive plugin suite (includes dashboard, explorer, picker, etc.)
│       ├── telescope.lua   # File search
│       ├── todo-comments.lua # TODO/FIXME highlighting and list
│       ├── trouble.lua     # Diagnostics/references list
│       └── which-key.lua   # Keybinding hints
└── README.md
```

## ⌨️ Keybindings

### Basic Operations

| Keybinding | Function |
|--------|------|
| `<Space>` | Leader key |
| `;` | Quick enter command mode |
| `jj` | Exit insert mode |
| `W` | Save file |
| `Q` | Quit window |
| `<leader>q` | Quit all windows |
| `<leader><CR>` | Clear search highlight |
| `R` | Save and reload configuration |

### Window Management

| Keybinding | Function |
|--------|------|
| `sl` | Split window vertically |
| `sb` | Split window horizontally |

### Navigation

| Keybinding | Function |
|--------|------|
| `H` | Move to beginning of line |
| `L` | Move to end of line |
| `<C-j>` | Move down 5 lines |
| `<C-k>` | Move up 5 lines |
| `<C-h>` | Move left 7 characters |
| `<C-l>` | Move right 7 characters |

### File Operations

| Keybinding | Function |
|--------|------|
| `<leader>e` | Toggle file tree |
| `<leader><space>` | Smart find file |
| `<leader>ff` | Find file |
| `<leader>fb` | Find buffer |
| `<leader>fg` | Find Git file |
| `<leader>fp` | Find project |
| `<leader>fr` | Recent files |
| `<leader>fc` | Find config file |
| `<leader>,` | Buffer list |
| `<leader>/` | Global search |
| `<leader>:` | Command history |

### LSP Operations

| Keybinding | Function |
|--------|------|
| `gd` | Go to definition |
| `gD` | Go to declaration |
| `gr` | Find references |
| `gI` | Go to implementation |
| `gy` | Go to type definition |
| `gai` | Find incoming calls |
| `gao` | Find outgoing calls |
| `<leader>ss` | LSP symbols |
| `<leader>sS` | LSP workspace symbols |
| `<leader>lr` | Rename symbol |
| `<leader>lc` | Code actions |
| `<leader>ld` | Go to definition |
| `<leader>lh` | Show hover documentation |
| `<leader>lR` | Find references |
| `<leader>ln` | Next diagnostic |
| `<leader>lp` | Previous diagnostic |

### Visual Mode

| Keybinding | Function |
|--------|------|
| `J` | Move selected line down |
| `K` | Move selected line up |

### Git Operations

| Keybinding | Function |
|--------|------|
| `<leader>gb` | Git branch |
| `<leader>gl` | Git log |
| `<leader>gL` | Git line log |
| `<leader>gs` | Git status |
| `<leader>gS` | Git Stash |
| `<leader>gd` | Git Diff |
| `<leader>gf` | Git file log |
| `<leader>gg` | Lazygit |
| `<leader>gB` | Git browse |

### Search Operations

| Keybinding | Function |
|--------|------|
| `<leader>sb` | Buffer line search |
| `<leader>sB` | Search open buffers |
| `<leader>sw` | Search word (supports visual selection) |
| `<leader>s"` | Registers |
| `<leader>s/` | Search history |
| `<leader>sa` | Autocmds |
| `<leader>sc` | Command list |
| `<leader>sd` | Diagnostics |
| `<leader>sD` | Buffer diagnostics |
| `<leader>sh` | Help documentation |
| `<leader>sH` | Highlight groups |
| `<leader>si` | Icons |
| `<leader>sj` | Jump list |
| `<leader>sk` | Keybinding list |
| `<leader>sl` | Location list |
| `<leader>sm` | Marks |
| `<leader>sM` | Manual pages |
| `<leader>su` | Undo history |

### Other Operations

| Keybinding | Function |
|--------|------|
| `<leader>z` | Toggle Zen mode |
| `<leader>Z` | Toggle zoom |
| `<leader>.` | Toggle scratch buffer |
| `<leader>S` | Select scratch buffer |
| `<leader>n` | Notification history |
| `<leader>N` | Neovim news |
| `<leader>bd` | Delete buffer |
| `<leader>cR` | Rename file |
| `<leader>uC` | Toggle theme |
| `<leader>un` | Close all notifications |
| `<C-/>` | Toggle terminal |
| `]]` | Jump to next reference |
| `[[` | Jump to previous reference |

### Configuration Editing

| Keybinding | Function |
|--------|------|
| `vk` | Edit key mapping configuration |
| `vo` | Edit options configuration |

## 🔌 Main Plugins

### Core Features

- **[lazy.nvim](https://github.com/folke/lazy.nvim)** - Modern plugin manager
- **[mason.nvim](https://github.com/williamboman/mason.nvim)** - LSP, DAP, Linter and formatter manager
- **[nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)** - LSP configuration
- **[snacks.nvim](https://github.com/folke/snacks.nvim)** - Comprehensive plugin suite including Dashboard, Explorer, Picker, Notifier, Zen Mode, etc.

### Code Completion & LSP

- **[blink.cmp](https://github.com/saghen/blink.cmp)** - Code completion engine
- **[lspsaga.nvim](https://github.com/nvimdev/lspsaga.nvim)** - LSP UI enhancement
- **[nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)** - Syntax highlighting and code parsing

### File Management

- **[telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)** - Fuzzy finder
- **[nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua)** - File tree
- **[grug-far.nvim](https://github.com/MagicDuck/grug-far.nvim)** - Find and replace

### UI Enhancements

- **[bufferline.nvim](https://github.com/akinsho/bufferline.nvim)** - Buffer tab bar
- **[lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)** - Status bar
- **[indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)** - Indent lines
- **[which-key.nvim](https://github.com/folke/which-key.nvim)** - Keybinding hints

### Themes

- **[catppuccin](https://github.com/catppuccin/nvim)** - Catppuccin theme
- **[gruvbox](https://github.com/ellisonleao/gruvbox.nvim)** - Gruvbox theme
- **[kanagawa.nvim](https://github.com/rebelot/kanagawa.nvim)** - Kanagawa theme
- **[sonokai](https://github.com/sainnhe/sonokai)** - Sonokai theme
- **[tokyonight.nvim](https://github.com/folke/tokyonight.nvim)** - Tokyonight theme

### Editing Enhancements

- **[nvim-autopairs](https://github.com/windwp/nvim-autopairs)** - Auto pair brackets
- **[nvim-surround](https://github.com/kylechui/nvim-surround)** - Surround operations
- **[hop.nvim](https://github.com/phaazon/hop.nvim)** - Quick jump
- **[flash.nvim](https://github.com/folke/flash.nvim)** - Quick jump/search
- **[gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)** - Git status display
- **[todo-comments.nvim](https://github.com/folke/todo-comments.nvim)** - TODO/FIXME highlighting and list
- **[trouble.nvim](https://github.com/folke/trouble.nvim)** - Diagnostics/references list

### Code Formatting

- **[none-ls.nvim](https://github.com/nvimtools/none-ls.nvim)** - Code formatting and diagnostics

### Experience Enhancements

- **[noice.nvim](https://github.com/folke/noice.nvim)** - Command line/message UI enhancement
- **[smear-cursor.nvim](https://github.com/sphamba/smear-cursor.nvim)** - Cursor animation

## 🎨 Theme Management

The configuration includes multiple themes, all theme configurations are placed in the `lua/themes/` directory using a simple configuration format.

### Available Themes

- **Catppuccin** - Modern soft color scheme supporting multiple styles (latte, frappe, macchiato, mocha)
- **Gruvbox** - Classic retro theme supporting light and dark modes
- **Kanagawa** - Theme inspired by Japanese ukiyo-e, supporting wave, lotus, dragon variants
- **Sonokai** - High contrast, comfortable eye-friendly color scheme supporting multiple styles (andromeda, atlantis, maia, espresso, shusia)
- **Tokyonight** - Modern Tokyo-style theme supporting storm, moon, night, day variants

### Switching Themes

#### Method 1: Using Commands (Recommended)

Switch themes directly in Neovim using commands:

```vim
:colorscheme catppuccin-frappe
:colorscheme gruvbox
:colorscheme kanagawa-wave
:colorscheme tokyonight-moon
```

#### Method 2: Modify Theme Configuration

Edit the corresponding theme file (e.g., `lua/themes/catppuccin.lua`), modify configuration options in `opts`:

```lua
opts = {
  flavour = "mocha",  -- Change style
  -- Add other configuration options
}
```

### Custom Theme Configuration

Each theme file uses a simple configuration format, you can directly add configuration options in `opts`:

**Example: Modify Catppuccin Style**

```lua
-- lua/themes/catppuccin.lua
return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  lazy = false,
  opts = {
    flavour = "mocha",  -- Change to mocha style
    transparent_background = true,  -- Enable transparent background
  },
}
```

**Example: Modify Tokyonight Style**

```lua
-- lua/themes/tokyonight.lua
return {
  "folke/tokyonight.nvim",
  name = "tokyonight",
  priority = 1000,
  lazy = false,
  opts = {
    style = "storm",  -- Change to storm style
    transparent = true,  -- Enable transparent background
  },
}
```

### Adding New Themes

1. Create a new theme configuration file in the `lua/themes/` directory
2. Reference the simple format of existing themes:

```lua
-- lua/themes/your-theme.lua
return {
  "author/theme-name",
  name = "theme-name",
  priority = 1000,
  lazy = false,
  opts = {
    -- Theme configuration options
  },
}
```

3. Restart Neovim, the theme will be automatically loaded

## ⚙️ Configuration Customization

### Modify Options

Edit `lua/core/options.lua` to modify Neovim's basic options.

### Modify Key Mappings

Edit `lua/core/keysmap.lua` to customize keybindings.

### Add Plugins

Create new Lua files in the `lua/plugins/` directory to add plugin configurations.

### Add Themes

Create new theme configuration files in the `lua/themes/` directory, reference the simple format of existing themes for configuration.

## 🔧 LSP Servers

The configuration will automatically install the following LSP servers:

- `lua_ls` - Lua language server
- `pyright` - Python language server
- `html` - HTML language server
- `cssls` - CSS language server
- `tailwindcss` - Tailwind CSS language server
- `jsonls` - JSON language server
- `ts_ls` - TypeScript/JavaScript language server
- `emmet_ls` - Emmet language server
- `vue_ls` - Vue language server
- `eslint` - ESLint language server

## 📝 Custom Commands

- `:NikAbout` - Show about information

## 🐛 Troubleshooting

If you encounter issues, you can try:

1. Update plugins: `:Lazy update`
2. Clean and reinstall: Delete `~/.local/share/nvim` and restart
3. Check Neovim version: `nvim --version` (requires >= 0.10.0)

## 📄 License

This project is licensed under the MIT License.

## 👤 Author

NiK Wang

## 🙏 Acknowledgments

Thanks to all plugin developers for their hard work!

---

**Note**: On first startup, plugins will be automatically installed, which may take some time. Please be patient.
