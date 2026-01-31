local M = {}

---Get syntax highlight groups
---@param c table colors
---@param opts SpinelConfig
---@return table
function M.get(c, opts)
  local styles = opts.styles or {}

  return {
    -- Standard syntax groups (:h group-name)
    Comment = vim.tbl_extend("force", { fg = c.comment }, styles.comments or {}),

    Constant = { fg = c.cyan },
    String = { fg = c.green },
    Character = { fg = c.green },
    Number = { fg = c.yellow },
    Boolean = vim.tbl_extend("force", { fg = c.pink }, styles.booleans or {}),
    Float = { fg = c.yellow },

    Identifier = { fg = c.cyan },
    Function = vim.tbl_extend("force", { fg = c.magenta }, styles.functions or {}),

    Statement = vim.tbl_extend("force", { fg = c.red }, styles.keywords or {}),
    Conditional = { fg = c.red },
    Repeat = { fg = c.red },
    Label = { fg = c.red },
    Operator = { fg = c.fg },
    Keyword = vim.tbl_extend("force", { fg = c.red }, styles.keywords or {}),
    Exception = { fg = c.red },

    PreProc = { fg = c.cyan },
    Include = { fg = c.red },
    Define = { fg = c.magenta },
    Macro = { fg = c.magenta },
    PreCondit = { fg = c.cyan },

    Type = { fg = c.red },
    StorageClass = { fg = c.red },
    Structure = { fg = c.red },
    Typedef = { fg = c.red },

    Special = { fg = c.teal },
    SpecialChar = { fg = c.teal },
    Tag = { fg = c.red },
    Delimiter = { fg = c.fg },
    SpecialComment = { fg = c.comment },
    Debug = { fg = c.orange },

    Underlined = { underline = true },
    Ignore = { fg = c.fg_gutter },
    Error = { fg = c.error },
    Todo = { fg = c.bg, bg = c.yellow, bold = true },

    -- Language-specific (legacy vim syntax)
    rubySymbol = { fg = c.teal },
    rubyConstant = { fg = c.blue },
    rubyClassName = { fg = c.blue },
    rubyModuleName = { fg = c.blue },
    rubyInstanceVariable = { fg = c.cyan },
    rubyClassVariable = { fg = c.cyan },
    rubyPseudoVariable = { fg = c.pink, bold = true },
    rubyKeyword = { fg = c.red },
    rubyDefine = { fg = c.red },
    rubyInterpolation = { fg = c.cyan },
    rubyInterpolationDelimiter = { fg = c.teal },
    rubyStringDelimiter = { fg = c.green },
    rubyRegexp = { fg = c.lime },
    rubyRegexpDelimiter = { fg = c.lime },

    luaTable = { fg = c.fg },
    luaFunction = { fg = c.red },

    pythonDecorator = { fg = c.orange },
    pythonDecoratorName = { fg = c.orange },
    pythonBuiltin = { fg = c.cyan },

    jsonKeyword = { fg = c.pink_light },
    jsonString = { fg = c.green },
    jsonNumber = { fg = c.yellow },
    jsonBoolean = { fg = c.pink, bold = true },
    jsonNull = { fg = c.pink, bold = true },

    yamlKey = { fg = c.pink_light },
    yamlBlockMappingKey = { fg = c.pink_light },

    markdownH1 = { fg = c.red, bold = true },
    markdownH2 = { fg = c.orange, bold = true },
    markdownH3 = { fg = c.yellow, bold = true },
    markdownH4 = { fg = c.green, bold = true },
    markdownH5 = { fg = c.cyan, bold = true },
    markdownH6 = { fg = c.blue, bold = true },
    markdownHeadingDelimiter = { fg = c.red },
    markdownCode = { fg = c.teal },
    markdownCodeBlock = { fg = c.teal },
    markdownCodeDelimiter = { fg = c.teal },
    markdownLink = { fg = c.blue, underline = true },
    markdownUrl = { fg = c.cyan, underline = true },
    markdownLinkText = { fg = c.blue },
    markdownBold = { bold = true },
    markdownItalic = { italic = true },
  }
end

return M
