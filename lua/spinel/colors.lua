local M = {}

---Get the color palette
---@param opts? SpinelConfig
---@return table
function M.get(opts)
  opts = opts or {}

  local colors = {
    -- UI colors
    none = "NONE",
    bg = "#2f2f2f",
    bg_dark = "#282828",
    bg_highlight = "#3b3b3b",
    bg_selection = "#4b4b4b",
    bg_visual = "#4b4b4b",
    fg = "#d1ccf1",
    fg_dark = "#b0acc0",
    fg_gutter = "#505050",
    border = "#404040",

    -- Syntax colors
    comment = "#bea17f",
    red = "#dd5555",
    green = "#5ac16c",
    yellow = "#eee385",
    orange = "#ff9a3b",
    cyan = "#18b5e4",
    blue = "#4b82e9",
    teal = "#7dcfcf",
    pink_light = "#eee0e0",
    pink = "#ed2a88",
    magenta = "#d464eb",
    lime = "#a6cc5f",

    -- Extended palette
    error = "#dd5555",
    warning = "#ff9a3b",
    info = "#18b5e4",
    hint = "#7dcfcf",
    success = "#5ac16c",

    -- Git colors
    git_add = "#5ac16c",
    git_change = "#ff9a3b",
    git_delete = "#dd5555",
    git_ignore = "#505050",

    -- Diff colors
    diff_add = "#2d3d2d",
    diff_change = "#3d3d2d",
    diff_delete = "#3d2d2d",
    diff_text = "#4d4d3d",
  }

  -- Allow user to override colors
  if opts.on_colors then
    opts.on_colors(colors)
  end

  return colors
end

return M
