local M = {}

---Get Treesitter highlight groups
---@param c table colors
---@param opts SpinelConfig
---@return table
function M.get(c, opts)
  local styles = opts.styles or {}

  return {
    -- Identifiers
    ["@variable"] = { fg = c.cyan },
    ["@variable.builtin"] = { fg = c.pink },
    ["@variable.parameter"] = vim.tbl_extend("force", { fg = c.orange }, styles.parameters or {}),
    ["@variable.parameter.builtin"] = { fg = c.orange },
    ["@variable.member"] = { fg = c.pink_light },

    -- Constants
    ["@constant"] = { fg = c.cyan },
    ["@constant.builtin"] = { fg = c.pink, bold = true },
    ["@constant.macro"] = { fg = c.magenta },

    -- Modules
    ["@module"] = { fg = c.blue },
    ["@module.builtin"] = { fg = c.blue },

    -- Labels
    ["@label"] = { fg = c.red },

    -- Strings
    ["@string"] = { fg = c.green },
    ["@string.documentation"] = { fg = c.green },
    ["@string.regexp"] = { fg = c.lime },
    ["@string.escape"] = { fg = c.teal },
    ["@string.special"] = { fg = c.teal },
    ["@string.special.symbol"] = { fg = c.teal },
    ["@string.special.path"] = { fg = c.cyan },
    ["@string.special.url"] = { fg = c.cyan, underline = true },

    -- Characters
    ["@character"] = { fg = c.green },
    ["@character.special"] = { fg = c.teal },

    -- Booleans
    ["@boolean"] = vim.tbl_extend("force", { fg = c.pink }, styles.booleans or {}),

    -- Numbers
    ["@number"] = { fg = c.yellow },
    ["@number.float"] = { fg = c.yellow },

    -- Types
    ["@type"] = { fg = c.red },
    ["@type.builtin"] = { fg = c.red },
    ["@type.definition"] = { fg = c.red },

    -- Attributes
    ["@attribute"] = { fg = c.orange },
    ["@attribute.builtin"] = { fg = c.orange },

    -- Properties
    ["@property"] = { fg = c.pink_light },

    -- Functions
    ["@function"] = vim.tbl_extend("force", { fg = c.magenta }, styles.functions or {}),
    ["@function.builtin"] = { fg = c.magenta },
    ["@function.call"] = { fg = c.magenta },
    ["@function.macro"] = { fg = c.magenta },
    ["@function.method"] = { fg = c.magenta },
    ["@function.method.call"] = { fg = c.magenta },

    -- Constructors
    ["@constructor"] = { fg = c.blue },

    -- Operators
    ["@operator"] = { fg = c.fg },

    -- Keywords
    ["@keyword"] = vim.tbl_extend("force", { fg = c.red }, styles.keywords or {}),
    ["@keyword.coroutine"] = { fg = c.red },
    ["@keyword.function"] = { fg = c.red },
    ["@keyword.operator"] = { fg = c.red },
    ["@keyword.import"] = { fg = c.red },
    ["@keyword.type"] = { fg = c.red },
    ["@keyword.modifier"] = { fg = c.red },
    ["@keyword.repeat"] = { fg = c.red },
    ["@keyword.return"] = { fg = c.red },
    ["@keyword.debug"] = { fg = c.red },
    ["@keyword.exception"] = { fg = c.red },
    ["@keyword.conditional"] = { fg = c.red },
    ["@keyword.conditional.ternary"] = { fg = c.red },
    ["@keyword.directive"] = { fg = c.cyan },
    ["@keyword.directive.define"] = { fg = c.magenta },

    -- Punctuation
    ["@punctuation.delimiter"] = { fg = c.fg },
    ["@punctuation.bracket"] = { fg = c.fg },
    ["@punctuation.special"] = { fg = c.teal },

    -- Comments
    ["@comment"] = vim.tbl_extend("force", { fg = c.comment }, styles.comments or {}),
    ["@comment.documentation"] = vim.tbl_extend("force", { fg = c.comment }, styles.comments or {}),
    ["@comment.error"] = { fg = c.error },
    ["@comment.warning"] = { fg = c.warning },
    ["@comment.todo"] = { fg = c.bg, bg = c.yellow, bold = true },
    ["@comment.note"] = { fg = c.bg, bg = c.info, bold = true },

    -- Markup
    ["@markup.strong"] = { bold = true },
    ["@markup.italic"] = { italic = true },
    ["@markup.strikethrough"] = { strikethrough = true },
    ["@markup.underline"] = { underline = true },
    ["@markup.heading"] = { fg = c.red, bold = true },
    ["@markup.heading.1"] = { fg = c.red, bold = true },
    ["@markup.heading.2"] = { fg = c.orange, bold = true },
    ["@markup.heading.3"] = { fg = c.yellow, bold = true },
    ["@markup.heading.4"] = { fg = c.green, bold = true },
    ["@markup.heading.5"] = { fg = c.cyan, bold = true },
    ["@markup.heading.6"] = { fg = c.blue, bold = true },
    ["@markup.quote"] = { fg = c.comment, italic = true },
    ["@markup.math"] = { fg = c.yellow },
    ["@markup.environment"] = { fg = c.magenta },
    ["@markup.link"] = { fg = c.blue, underline = true },
    ["@markup.link.label"] = { fg = c.teal },
    ["@markup.link.url"] = { fg = c.cyan, underline = true },
    ["@markup.raw"] = { fg = c.teal },
    ["@markup.raw.block"] = { fg = c.teal },
    ["@markup.list"] = { fg = c.red },
    ["@markup.list.checked"] = { fg = c.green },
    ["@markup.list.unchecked"] = { fg = c.fg_gutter },

    -- Diff
    ["@diff.plus"] = { fg = c.git_add },
    ["@diff.minus"] = { fg = c.git_delete },
    ["@diff.delta"] = { fg = c.git_change },

    -- Tags (HTML/XML)
    ["@tag"] = { fg = c.red },
    ["@tag.attribute"] = { fg = c.orange, italic = true },
    ["@tag.delimiter"] = { fg = c.fg },
    ["@tag.builtin"] = { fg = c.red },
  }
end

return M
