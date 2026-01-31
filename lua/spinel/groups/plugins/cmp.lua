local M = {}

---Get nvim-cmp highlight groups
---@param c table colors
---@param opts SpinelConfig
---@return table
function M.get(c, opts)
  return {
    CmpItemAbbr = { fg = c.fg },
    CmpItemAbbrDeprecated = { fg = c.fg_gutter, strikethrough = true },
    CmpItemAbbrMatch = { fg = c.cyan, bold = true },
    CmpItemAbbrMatchFuzzy = { fg = c.cyan, bold = true },
    CmpItemMenu = { fg = c.comment },

    CmpItemKindDefault = { fg = c.fg },
    CmpItemKindText = { fg = c.fg },
    CmpItemKindMethod = { fg = c.magenta },
    CmpItemKindFunction = { fg = c.magenta },
    CmpItemKindConstructor = { fg = c.blue },
    CmpItemKindField = { fg = c.pink_light },
    CmpItemKindVariable = { fg = c.cyan },
    CmpItemKindClass = { fg = c.blue },
    CmpItemKindInterface = { fg = c.blue },
    CmpItemKindModule = { fg = c.blue },
    CmpItemKindProperty = { fg = c.pink_light },
    CmpItemKindUnit = { fg = c.yellow },
    CmpItemKindValue = { fg = c.yellow },
    CmpItemKindEnum = { fg = c.blue },
    CmpItemKindKeyword = { fg = c.red },
    CmpItemKindSnippet = { fg = c.teal },
    CmpItemKindColor = { fg = c.magenta },
    CmpItemKindFile = { fg = c.blue },
    CmpItemKindReference = { fg = c.cyan },
    CmpItemKindFolder = { fg = c.blue },
    CmpItemKindEnumMember = { fg = c.cyan },
    CmpItemKindConstant = { fg = c.cyan },
    CmpItemKindStruct = { fg = c.blue },
    CmpItemKindEvent = { fg = c.orange },
    CmpItemKindOperator = { fg = c.fg },
    CmpItemKindTypeParameter = { fg = c.red },
    CmpItemKindCopilot = { fg = c.teal },
  }
end

return M
