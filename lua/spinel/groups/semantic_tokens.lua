local M = {}

---Get LSP semantic token highlight groups
---@param c table colors
---@param opts SpinelConfig
---@return table
function M.get(c, opts)
  local styles = opts.styles or {}

  return {
    -- Types
    ["@lsp.type.class"] = { fg = c.blue },
    ["@lsp.type.comment"] = {},
    ["@lsp.type.decorator"] = { fg = c.orange },
    ["@lsp.type.enum"] = { fg = c.blue },
    ["@lsp.type.enumMember"] = { fg = c.cyan },
    ["@lsp.type.function"] = vim.tbl_extend("force", { fg = c.magenta }, styles.functions or {}),
    ["@lsp.type.interface"] = { fg = c.blue },
    ["@lsp.type.keyword"] = vim.tbl_extend("force", { fg = c.red }, styles.keywords or {}),
    ["@lsp.type.macro"] = { fg = c.magenta },
    ["@lsp.type.method"] = { fg = c.magenta },
    ["@lsp.type.namespace"] = { fg = c.blue },
    ["@lsp.type.number"] = { fg = c.yellow },
    ["@lsp.type.operator"] = { fg = c.fg },
    ["@lsp.type.parameter"] = vim.tbl_extend("force", { fg = c.orange }, styles.parameters or {}),
    ["@lsp.type.property"] = { fg = c.pink_light },
    ["@lsp.type.regexp"] = { fg = c.lime },
    ["@lsp.type.string"] = { fg = c.green },
    ["@lsp.type.struct"] = { fg = c.blue },
    ["@lsp.type.type"] = { fg = c.red },
    ["@lsp.type.typeParameter"] = { fg = c.red },
    ["@lsp.type.variable"] = { fg = c.cyan },

    -- Type modifiers
    ["@lsp.typemod.class.declaration"] = { fg = c.blue },
    ["@lsp.typemod.function.declaration"] = vim.tbl_extend("force", { fg = c.magenta }, styles.functions or {}),
    ["@lsp.typemod.function.definition"] = vim.tbl_extend("force", { fg = c.magenta }, styles.functions or {}),
    ["@lsp.typemod.method.declaration"] = { fg = c.magenta },
    ["@lsp.typemod.method.definition"] = { fg = c.magenta },
    ["@lsp.typemod.parameter.declaration"] = vim.tbl_extend("force", { fg = c.orange }, styles.parameters or {}),
    ["@lsp.typemod.variable.constant"] = { fg = c.cyan },
    ["@lsp.typemod.variable.declaration"] = { fg = c.cyan },
    ["@lsp.typemod.variable.defaultLibrary"] = { fg = c.pink },
    ["@lsp.typemod.variable.global"] = { fg = c.cyan },
    ["@lsp.typemod.variable.readonly"] = { fg = c.cyan },
    ["@lsp.typemod.variable.static"] = { fg = c.cyan },

    -- Modifiers
    ["@lsp.mod.declaration"] = {},
    ["@lsp.mod.definition"] = {},
    ["@lsp.mod.readonly"] = {},
    ["@lsp.mod.static"] = {},
    ["@lsp.mod.deprecated"] = { strikethrough = true },
    ["@lsp.mod.abstract"] = { italic = true },
    ["@lsp.mod.async"] = {},
    ["@lsp.mod.modification"] = {},
    ["@lsp.mod.documentation"] = {},
    ["@lsp.mod.defaultLibrary"] = {},
  }
end

return M
