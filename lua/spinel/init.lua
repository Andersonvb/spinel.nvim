local M = {}

---@class SpinelConfig
---@field transparent boolean
---@field terminal_colors boolean
---@field styles table
---@field on_colors fun(colors: table)
---@field on_highlights fun(highlights: table, colors: table)
---@field plugins table

M.version = "1.0.0"

---Setup the colorscheme with user options
---@param opts? SpinelConfig
function M.setup(opts)
  require("spinel.config").setup(opts)
end

---Load the colorscheme
function M.load()
  if vim.g.colors_name then
    vim.cmd("hi clear")
  end

  vim.o.termguicolors = true
  vim.g.colors_name = "spinel"

  local config = require("spinel.config")
  local theme = require("spinel.theme")

  theme.setup(config.options)
end

return M
