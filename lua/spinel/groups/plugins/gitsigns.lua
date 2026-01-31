local M = {}

---Get gitsigns highlight groups
---@param c table colors
---@param opts SpinelConfig
---@return table
function M.get(c, opts)
  return {
    GitSignsAdd = { fg = c.git_add },
    GitSignsChange = { fg = c.git_change },
    GitSignsDelete = { fg = c.git_delete },

    GitSignsAddNr = { fg = c.git_add },
    GitSignsChangeNr = { fg = c.git_change },
    GitSignsDeleteNr = { fg = c.git_delete },

    GitSignsAddLn = { bg = c.diff_add },
    GitSignsChangeLn = { bg = c.diff_change },
    GitSignsDeleteLn = { bg = c.diff_delete },

    GitSignsAddPreview = { fg = c.git_add },
    GitSignsDeletePreview = { fg = c.git_delete },

    GitSignsCurrentLineBlame = { fg = c.fg_gutter, italic = true },

    GitSignsAddInline = { bg = c.diff_add },
    GitSignsChangeInline = { bg = c.diff_change },
    GitSignsDeleteInline = { bg = c.diff_delete },

    GitSignsAddLnInline = { bg = c.diff_add },
    GitSignsChangeLnInline = { bg = c.diff_change },
    GitSignsDeleteLnInline = { bg = c.diff_delete },

    GitSignsDeleteVirtLn = { fg = c.git_delete },
    GitSignsDeleteVirtLnInLine = { fg = c.git_delete },

    GitSignsVirtLnum = { fg = c.fg_gutter },
  }
end

return M
