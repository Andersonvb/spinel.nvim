local M = {}

---Setup and apply the theme
---@param opts SpinelConfig
function M.setup(opts)
  local colors = require("spinel.colors").get(opts)
  local util = require("spinel.util")
  local groups = require("spinel.groups")

  -- Get all highlight groups
  local highlights = groups.get(colors, opts)

  -- Allow user to override highlights
  if opts.on_highlights then
    opts.on_highlights(highlights, colors)
  end

  -- Apply highlights
  util.load(highlights)

  -- Set terminal colors
  if opts.terminal_colors then
    M.terminal(colors)
  end
end

---Set terminal colors
---@param colors table
function M.terminal(colors)
  -- Black
  vim.g.terminal_color_0 = colors.bg_dark
  vim.g.terminal_color_8 = colors.fg_gutter

  -- Red
  vim.g.terminal_color_1 = colors.red
  vim.g.terminal_color_9 = colors.red

  -- Green
  vim.g.terminal_color_2 = colors.green
  vim.g.terminal_color_10 = colors.green

  -- Yellow
  vim.g.terminal_color_3 = colors.yellow
  vim.g.terminal_color_11 = colors.yellow

  -- Blue
  vim.g.terminal_color_4 = colors.blue
  vim.g.terminal_color_12 = colors.blue

  -- Magenta
  vim.g.terminal_color_5 = colors.magenta
  vim.g.terminal_color_13 = colors.magenta

  -- Cyan
  vim.g.terminal_color_6 = colors.cyan
  vim.g.terminal_color_14 = colors.cyan

  -- White
  vim.g.terminal_color_7 = colors.fg
  vim.g.terminal_color_15 = colors.fg
end

return M
