local M = {}

---Get base editor highlight groups
---@param c table colors
---@param opts SpinelConfig
---@return table
function M.get(c, opts)
  local transparent = opts.transparent

  return {
    -- Editor
    Normal = { fg = c.fg, bg = transparent and c.none or c.bg },
    NormalNC = { fg = c.fg, bg = transparent and c.none or c.bg },
    NormalFloat = { fg = c.fg, bg = c.bg_dark },
    FloatBorder = { fg = c.border, bg = c.bg_dark },
    FloatTitle = { fg = c.cyan, bg = c.bg_dark, bold = true },
    Cursor = { fg = c.bg, bg = c.fg },
    lCursor = { link = "Cursor" },
    CursorIM = { link = "Cursor" },
    CursorLine = { bg = c.bg_highlight },
    CursorColumn = { link = "CursorLine" },
    ColorColumn = { bg = c.bg_highlight },
    LineNr = { fg = c.fg_gutter },
    CursorLineNr = { fg = c.yellow, bold = true },
    SignColumn = { fg = c.fg_gutter, bg = transparent and c.none or c.bg },
    FoldColumn = { fg = c.fg_gutter, bg = transparent and c.none or c.bg },
    Folded = { fg = c.comment, bg = c.bg_highlight },

    -- Status/Tab lines
    StatusLine = { fg = c.fg, bg = c.bg_dark },
    StatusLineNC = { fg = c.fg_gutter, bg = c.bg_dark },
    TabLine = { fg = c.fg_gutter, bg = c.bg_dark },
    TabLineFill = { bg = c.bg_dark },
    TabLineSel = { fg = c.fg, bg = c.bg, bold = true },
    WinBar = { link = "StatusLine" },
    WinBarNC = { link = "StatusLineNC" },
    WinSeparator = { fg = c.border, bg = transparent and c.none or c.bg },
    VertSplit = { link = "WinSeparator" },

    -- Popup menu
    Pmenu = { fg = c.fg, bg = c.bg_dark },
    PmenuSel = { fg = c.fg, bg = c.bg_selection },
    PmenuSbar = { bg = c.bg_highlight },
    PmenuThumb = { bg = c.fg_gutter },

    -- Search/Visual
    Visual = { bg = c.bg_visual },
    VisualNOS = { link = "Visual" },
    Search = { fg = c.bg, bg = c.yellow },
    IncSearch = { fg = c.bg, bg = c.orange },
    CurSearch = { link = "IncSearch" },
    Substitute = { fg = c.bg, bg = c.red },

    -- Messages
    ErrorMsg = { fg = c.error },
    WarningMsg = { fg = c.warning },
    ModeMsg = { fg = c.fg, bold = true },
    MoreMsg = { fg = c.cyan },
    Question = { fg = c.cyan },
    Title = { fg = c.cyan, bold = true },

    -- Matching
    MatchParen = { fg = c.orange, bold = true },

    -- Misc
    Conceal = { fg = c.fg_gutter },
    NonText = { fg = c.fg_gutter },
    SpecialKey = { fg = c.fg_gutter },
    Whitespace = { fg = c.fg_gutter },
    EndOfBuffer = { fg = c.bg },
    Directory = { fg = c.blue },

    -- Diff
    DiffAdd = { bg = c.diff_add },
    DiffChange = { bg = c.diff_change },
    DiffDelete = { bg = c.diff_delete },
    DiffText = { bg = c.diff_text },
    diffAdded = { fg = c.git_add },
    diffRemoved = { fg = c.git_delete },
    diffChanged = { fg = c.git_change },
    diffOldFile = { fg = c.yellow },
    diffNewFile = { fg = c.orange },
    diffFile = { fg = c.blue },
    diffLine = { fg = c.comment },
    diffIndexLine = { fg = c.magenta },

    -- Spelling
    SpellBad = { sp = c.error, undercurl = true },
    SpellCap = { sp = c.warning, undercurl = true },
    SpellLocal = { sp = c.info, undercurl = true },
    SpellRare = { sp = c.hint, undercurl = true },

    -- Quickfix
    QuickFixLine = { bg = c.bg_selection, bold = true },
    qfFileName = { fg = c.blue },
    qfLineNr = { fg = c.yellow },
  }
end

return M
