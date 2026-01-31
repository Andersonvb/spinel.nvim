local M = {}

---Get indent-blankline highlight groups
---@param c table colors
---@param opts SpinelConfig
---@return table
function M.get(c, opts)
  return {
    -- indent-blankline v3 (ibl)
    IblIndent = { fg = c.fg_gutter, nocombine = true },
    IblWhitespace = { fg = c.fg_gutter, nocombine = true },
    IblScope = { fg = c.border, nocombine = true },

    -- Rainbow indent colors (optional)
    RainbowRed = { fg = c.red },
    RainbowYellow = { fg = c.yellow },
    RainbowBlue = { fg = c.blue },
    RainbowOrange = { fg = c.orange },
    RainbowGreen = { fg = c.green },
    RainbowViolet = { fg = c.magenta },
    RainbowCyan = { fg = c.cyan },

    -- Legacy indent-blankline v2
    IndentBlanklineChar = { fg = c.fg_gutter, nocombine = true },
    IndentBlanklineSpaceChar = { fg = c.fg_gutter, nocombine = true },
    IndentBlanklineSpaceCharBlankline = { fg = c.fg_gutter, nocombine = true },
    IndentBlanklineContextChar = { fg = c.border, nocombine = true },
    IndentBlanklineContextStart = { sp = c.border, underline = true },
  }
end

return M
