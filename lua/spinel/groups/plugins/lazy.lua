local M = {}

---Get lazy.nvim highlight groups
---@param c table colors
---@param opts SpinelConfig
---@return table
function M.get(c, opts)
  return {
    LazyNormal = { fg = c.fg, bg = c.bg_dark },
    LazyButton = { fg = c.fg, bg = c.bg_highlight },
    LazyButtonActive = { fg = c.bg, bg = c.cyan },

    LazyComment = { fg = c.comment },
    LazyCommit = { fg = c.fg_gutter },
    LazyCommitIssue = { fg = c.yellow },
    LazyCommitScope = { fg = c.fg, italic = true },
    LazyCommitType = { fg = c.cyan, bold = true },
    LazyDimmed = { fg = c.fg_gutter },
    LazyDir = { fg = c.blue },

    LazyH1 = { fg = c.bg, bg = c.cyan, bold = true },
    LazyH2 = { fg = c.cyan, bold = true },

    LazyLocal = { fg = c.orange },
    LazyProgressDone = { fg = c.green },
    LazyProgressTodo = { fg = c.fg_gutter },

    LazyProp = { fg = c.pink_light },
    LazyReasonCmd = { fg = c.magenta },
    LazyReasonEvent = { fg = c.orange },
    LazyReasonFt = { fg = c.yellow },
    LazyReasonImport = { fg = c.cyan },
    LazyReasonKeys = { fg = c.teal },
    LazyReasonPlugin = { fg = c.blue },
    LazyReasonRequire = { fg = c.cyan },
    LazyReasonRuntime = { fg = c.fg_gutter },
    LazyReasonSource = { fg = c.green },
    LazyReasonStart = { fg = c.green },

    LazySpecial = { fg = c.teal },
    LazyTaskError = { fg = c.error },
    LazyTaskOutput = { fg = c.fg },
    LazyUrl = { fg = c.cyan, underline = true },
    LazyValue = { fg = c.green },
  }
end

return M
