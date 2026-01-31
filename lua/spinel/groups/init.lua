local M = {}

---Get all highlight groups
---@param colors table
---@param opts SpinelConfig
---@return table
function M.get(colors, opts)
  local highlights = {}

  -- Load base groups
  local modules = {
    "spinel.groups.base",
    "spinel.groups.syntax",
    "spinel.groups.treesitter",
    "spinel.groups.semantic_tokens",
    "spinel.groups.diagnostics",
  }

  for _, mod in ipairs(modules) do
    local ok, module = pcall(require, mod)
    if ok then
      highlights = vim.tbl_extend("force", highlights, module.get(colors, opts))
    end
  end

  -- Load plugin groups
  local plugins_ok, plugins = pcall(require, "spinel.groups.plugins")
  if plugins_ok then
    highlights = vim.tbl_extend("force", highlights, plugins.get(colors, opts))
  end

  return highlights
end

return M
