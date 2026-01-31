local M = {}

---Get diagnostic highlight groups
---@param c table colors
---@param opts SpinelConfig
---@return table
function M.get(c, opts)
  return {
    -- Diagnostics base
    DiagnosticError = { fg = c.error },
    DiagnosticWarn = { fg = c.warning },
    DiagnosticInfo = { fg = c.info },
    DiagnosticHint = { fg = c.hint },
    DiagnosticOk = { fg = c.success },

    -- Diagnostics virtual text
    DiagnosticVirtualTextError = { fg = c.error, bg = c.none },
    DiagnosticVirtualTextWarn = { fg = c.warning, bg = c.none },
    DiagnosticVirtualTextInfo = { fg = c.info, bg = c.none },
    DiagnosticVirtualTextHint = { fg = c.hint, bg = c.none },
    DiagnosticVirtualTextOk = { fg = c.success, bg = c.none },

    -- Diagnostics underline
    DiagnosticUnderlineError = { sp = c.error, undercurl = true },
    DiagnosticUnderlineWarn = { sp = c.warning, undercurl = true },
    DiagnosticUnderlineInfo = { sp = c.info, undercurl = true },
    DiagnosticUnderlineHint = { sp = c.hint, undercurl = true },
    DiagnosticUnderlineOk = { sp = c.success, undercurl = true },

    -- Diagnostics floating
    DiagnosticFloatingError = { fg = c.error },
    DiagnosticFloatingWarn = { fg = c.warning },
    DiagnosticFloatingInfo = { fg = c.info },
    DiagnosticFloatingHint = { fg = c.hint },
    DiagnosticFloatingOk = { fg = c.success },

    -- Diagnostics signs
    DiagnosticSignError = { fg = c.error },
    DiagnosticSignWarn = { fg = c.warning },
    DiagnosticSignInfo = { fg = c.info },
    DiagnosticSignHint = { fg = c.hint },
    DiagnosticSignOk = { fg = c.success },

    -- LSP
    LspReferenceText = { bg = c.bg_highlight },
    LspReferenceRead = { bg = c.bg_highlight },
    LspReferenceWrite = { bg = c.bg_highlight },
    LspSignatureActiveParameter = { fg = c.orange, bold = true },
    LspCodeLens = { fg = c.comment },
    LspCodeLensSeparator = { fg = c.fg_gutter },
    LspInlayHint = { fg = c.fg_gutter, bg = c.bg_highlight },

    -- LSP Info window
    LspInfoBorder = { fg = c.border },
  }
end

return M
