local M = {}

---Get Telescope highlight groups
---@param c table colors
---@param opts SpinelConfig
---@return table
function M.get(c, opts)
  return {
    TelescopeNormal = { fg = c.fg, bg = c.bg_dark },
    TelescopeBorder = { fg = c.border, bg = c.bg_dark },
    TelescopeTitle = { fg = c.cyan, bg = c.bg_dark, bold = true },

    TelescopePromptNormal = { fg = c.fg, bg = c.bg_highlight },
    TelescopePromptBorder = { fg = c.border, bg = c.bg_highlight },
    TelescopePromptTitle = { fg = c.orange, bg = c.bg_highlight, bold = true },
    TelescopePromptPrefix = { fg = c.cyan },
    TelescopePromptCounter = { fg = c.fg_gutter },

    TelescopeResultsNormal = { fg = c.fg, bg = c.bg_dark },
    TelescopeResultsBorder = { fg = c.border, bg = c.bg_dark },
    TelescopeResultsTitle = { fg = c.cyan, bg = c.bg_dark, bold = true },

    TelescopePreviewNormal = { fg = c.fg, bg = c.bg_dark },
    TelescopePreviewBorder = { fg = c.border, bg = c.bg_dark },
    TelescopePreviewTitle = { fg = c.green, bg = c.bg_dark, bold = true },

    TelescopeSelection = { fg = c.fg, bg = c.bg_selection },
    TelescopeSelectionCaret = { fg = c.cyan, bg = c.bg_selection },
    TelescopeMultiSelection = { fg = c.cyan, bg = c.bg_selection },
    TelescopeMultiIcon = { fg = c.cyan },

    TelescopeMatching = { fg = c.orange, bold = true },
  }
end

return M
