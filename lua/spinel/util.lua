local M = {}

---Convert hex color to RGB
---@param hex string
---@return number, number, number
function M.hex_to_rgb(hex)
  hex = hex:gsub("#", "")
  return tonumber(hex:sub(1, 2), 16),
    tonumber(hex:sub(3, 4), 16),
    tonumber(hex:sub(5, 6), 16)
end

---Convert RGB to hex color
---@param r number
---@param g number
---@param b number
---@return string
function M.rgb_to_hex(r, g, b)
  return string.format("#%02x%02x%02x", r, g, b)
end

---Blend two colors
---@param fg string foreground color
---@param bg string background color
---@param alpha number blend amount (0-1)
---@return string
function M.blend(fg, bg, alpha)
  local fg_r, fg_g, fg_b = M.hex_to_rgb(fg)
  local bg_r, bg_g, bg_b = M.hex_to_rgb(bg)

  local r = math.floor(fg_r * alpha + bg_r * (1 - alpha))
  local g = math.floor(fg_g * alpha + bg_g * (1 - alpha))
  local b = math.floor(fg_b * alpha + bg_b * (1 - alpha))

  return M.rgb_to_hex(r, g, b)
end

---Darken a color
---@param hex string
---@param amount number (0-1)
---@return string
function M.darken(hex, amount)
  return M.blend(hex, "#000000", 1 - amount)
end

---Lighten a color
---@param hex string
---@param amount number (0-1)
---@return string
function M.lighten(hex, amount)
  return M.blend(hex, "#ffffff", 1 - amount)
end

---Apply highlight group
---@param group string
---@param hl table
function M.highlight(group, hl)
  vim.api.nvim_set_hl(0, group, hl)
end

---Apply multiple highlight groups
---@param highlights table<string, table>
function M.load(highlights)
  for group, hl in pairs(highlights) do
    M.highlight(group, hl)
  end
end

return M
