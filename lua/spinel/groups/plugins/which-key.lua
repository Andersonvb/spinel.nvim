local M = {}

---Get which-key highlight groups
---@param c table colors
---@param opts SpinelConfig
---@return table
function M.get(c, opts)
  return {
    WhichKey = { fg = c.cyan },
    WhichKeyGroup = { fg = c.blue },
    WhichKeyDesc = { fg = c.fg },
    WhichKeySeperator = { fg = c.comment },
    WhichKeySeparator = { fg = c.comment },
    WhichKeyFloat = { bg = c.bg_dark },
    WhichKeyBorder = { fg = c.border, bg = c.bg_dark },
    WhichKeyValue = { fg = c.fg_gutter },

    -- New which-key v3 groups
    WhichKeyNormal = { fg = c.fg, bg = c.bg_dark },
    WhichKeyTitle = { fg = c.cyan, bold = true },
    WhichKeyIconAzure = { fg = c.cyan },
    WhichKeyIconBlue = { fg = c.blue },
    WhichKeyIconCyan = { fg = c.teal },
    WhichKeyIconGreen = { fg = c.green },
    WhichKeyIconGrey = { fg = c.fg_gutter },
    WhichKeyIconOrange = { fg = c.orange },
    WhichKeyIconPurple = { fg = c.magenta },
    WhichKeyIconRed = { fg = c.red },
    WhichKeyIconYellow = { fg = c.yellow },
  }
end

return M
