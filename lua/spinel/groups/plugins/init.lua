local M = {}

-- Plugin detection
local function is_loaded(plugin)
  return package.loaded[plugin] ~= nil
end

local function plugin_available(name)
  local ok = pcall(require, name)
  return ok
end

---Get all plugin highlight groups
---@param colors table
---@param opts SpinelConfig
---@return table
function M.get(colors, opts)
  local highlights = {}
  local plugins_config = opts.plugins or {}
  local auto_detect = plugins_config.auto ~= false

  local plugin_modules = {
    { name = "telescope", check = "telescope", module = "spinel.groups.plugins.telescope" },
    { name = "nvim_tree", check = "nvim-tree", module = "spinel.groups.plugins.nvim-tree" },
    { name = "gitsigns", check = "gitsigns", module = "spinel.groups.plugins.gitsigns" },
    { name = "cmp", check = "cmp", module = "spinel.groups.plugins.cmp" },
    { name = "which_key", check = "which-key", module = "spinel.groups.plugins.which-key" },
    { name = "indent_blankline", check = "ibl", module = "spinel.groups.plugins.indent-blankline" },
    { name = "lazy", check = "lazy", module = "spinel.groups.plugins.lazy" },
  }

  for _, plugin in ipairs(plugin_modules) do
    local should_load = plugins_config[plugin.name]
    if should_load == nil and auto_detect then
      should_load = is_loaded(plugin.check) or plugin_available(plugin.check)
    end

    if should_load then
      local ok, mod = pcall(require, plugin.module)
      if ok then
        highlights = vim.tbl_extend("force", highlights, mod.get(colors, opts))
      end
    end
  end

  return highlights
end

return M
