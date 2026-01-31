local M = {}

---@type SpinelConfig
M.defaults = {
  transparent = false,
  terminal_colors = true,
  styles = {
    comments = { italic = true },
    keywords = { italic = false, bold = false },
    functions = { italic = false, bold = false },
    parameters = { italic = true },
    booleans = { bold = true },
  },
  on_colors = function(colors) end,
  on_highlights = function(highlights, colors) end,
  plugins = {
    auto = true,
    telescope = true,
    nvim_tree = true,
    gitsigns = true,
    cmp = true,
    which_key = true,
    indent_blankline = true,
    lazy = true,
  },
}

---@type SpinelConfig
M.options = {}

---Setup configuration with user options
---@param opts? SpinelConfig
function M.setup(opts)
  M.options = vim.tbl_deep_extend("force", {}, M.defaults, opts or {})
end

-- Initialize with defaults
M.setup()

return M
