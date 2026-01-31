# spinel.nvim

A Neovim colorscheme based on [Shopify's Spinel theme](https://github.com/Shopify/vscode-shopify-ruby/tree/main) for VSCode.

![spinel.nvim screenshot](assets/screenshot.png)

## Features

- Carefully crafted color palette matching the original Spinel theme
- Full Treesitter support with semantic highlighting
- LSP semantic tokens support
- Built-in support for popular plugins:
  - telescope.nvim
  - nvim-tree.lua
  - gitsigns.nvim
  - nvim-cmp
  - which-key.nvim
  - indent-blankline.nvim
  - lazy.nvim
- Transparent background option
- Customizable styles for comments, keywords, functions, and parameters
- LazyVim compatible

## Requirements

- Neovim >= 0.8.0
- `termguicolors` enabled

## Installation

### Using [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  "Andersonvb/spinel.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
}
```

### Using [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use {
  "Andersonvb/spinel.nvim",
  config = function()
    require("spinel").setup()
    vim.cmd.colorscheme("spinel")
  end
}
```

## Configuration

Spinel comes with sensible defaults. Call `setup()` before loading the colorscheme to customize:

```lua
require("spinel").setup({
  -- Enable transparent background
  transparent = false,

  -- Set terminal colors
  terminal_colors = true,

  -- Style customization
  styles = {
    comments = { italic = true },
    keywords = { italic = false, bold = false },
    functions = { italic = false, bold = false },
    parameters = { italic = true },
    booleans = { bold = true },
  },

  -- Override colors
  on_colors = function(colors)
    colors.bg = "#1a1a1a"
  end,

  -- Override highlight groups
  on_highlights = function(hl, colors)
    hl.Comment = { fg = colors.comment, italic = true }
  end,

  -- Plugin integration
  plugins = {
    auto = true, -- Auto-detect loaded plugins
    telescope = true,
    nvim_tree = true,
    gitsigns = true,
    cmp = true,
    which_key = true,
    indent_blankline = true,
    lazy = true,
  },
})
```

### LazyVim Configuration

```lua
return {
  {
    "Andersonvb/spinel.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = false,
      styles = {
        comments = { italic = true },
        parameters = { italic = true },
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "spinel",
    },
  },
}
```

## Color Palette

### UI Colors

| Name | Hex | Preview |
|------|-----|---------|
| Background | `#2f2f2f` | ![#2f2f2f](https://via.placeholder.com/20/2f2f2f/2f2f2f) |
| Background Dark | `#282828` | ![#282828](https://via.placeholder.com/20/282828/282828) |
| Background Highlight | `#3b3b3b` | ![#3b3b3b](https://via.placeholder.com/20/3b3b3b/3b3b3b) |
| Foreground | `#d1ccf1` | ![#d1ccf1](https://via.placeholder.com/20/d1ccf1/d1ccf1) |
| Border | `#404040` | ![#404040](https://via.placeholder.com/20/404040/404040) |

### Syntax Colors

| Name | Hex | Usage | Preview |
|------|-----|-------|---------|
| Comment | `#bea17f` | Comments | ![#bea17f](https://via.placeholder.com/20/bea17f/bea17f) |
| Red | `#dd5555` | Keywords, Types | ![#dd5555](https://via.placeholder.com/20/dd5555/dd5555) |
| Green | `#5ac16c` | Strings | ![#5ac16c](https://via.placeholder.com/20/5ac16c/5ac16c) |
| Yellow | `#eee385` | Numbers | ![#eee385](https://via.placeholder.com/20/eee385/eee385) |
| Orange | `#ff9a3b` | Parameters | ![#ff9a3b](https://via.placeholder.com/20/ff9a3b/ff9a3b) |
| Cyan | `#18b5e4` | Variables | ![#18b5e4](https://via.placeholder.com/20/18b5e4/18b5e4) |
| Blue | `#4b82e9` | Classes, Modules | ![#4b82e9](https://via.placeholder.com/20/4b82e9/4b82e9) |
| Teal | `#7dcfcf` | Symbols | ![#7dcfcf](https://via.placeholder.com/20/7dcfcf/7dcfcf) |
| Pink Light | `#eee0e0` | Properties | ![#eee0e0](https://via.placeholder.com/20/eee0e0/eee0e0) |
| Pink | `#ed2a88` | self, nil, true | ![#ed2a88](https://via.placeholder.com/20/ed2a88/ed2a88) |
| Magenta | `#d464eb` | Function definitions | ![#d464eb](https://via.placeholder.com/20/d464eb/d464eb) |
| Lime | `#a6cc5f` | Regexp | ![#a6cc5f](https://via.placeholder.com/20/a6cc5f/a6cc5f) |

## Verification

After installation, verify the theme is working:

1. Load the colorscheme: `:colorscheme spinel`
2. Open various file types (Ruby, Lua, Python, etc.)
3. Use `:Inspect` on tokens to verify highlight groups
4. Open Telescope, nvim-tree to verify plugin integration
5. Test transparent mode: `opts = { transparent = true }`

## License

This colorscheme is available as open source under the terms of the [MIT License](LICENSE).
