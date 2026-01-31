local M = {}

---Get nvim-tree highlight groups
---@param c table colors
---@param opts SpinelConfig
---@return table
function M.get(c, opts)
  local transparent = opts.transparent

  return {
    NvimTreeNormal = { fg = c.fg, bg = transparent and c.none or c.bg_dark },
    NvimTreeNormalNC = { fg = c.fg, bg = transparent and c.none or c.bg_dark },
    NvimTreeWinSeparator = { fg = c.border, bg = transparent and c.none or c.bg_dark },
    NvimTreeEndOfBuffer = { fg = c.bg_dark },

    NvimTreeRootFolder = { fg = c.cyan, bold = true },
    NvimTreeFolderName = { fg = c.blue },
    NvimTreeFolderIcon = { fg = c.blue },
    NvimTreeOpenedFolderName = { fg = c.blue, bold = true },
    NvimTreeEmptyFolderName = { fg = c.fg_gutter },
    NvimTreeSymlinkFolderName = { fg = c.cyan },

    NvimTreeFileName = { fg = c.fg },
    NvimTreeOpenedFile = { fg = c.fg, bold = true },
    NvimTreeModifiedFile = { fg = c.orange },
    NvimTreeExecFile = { fg = c.green, bold = true },
    NvimTreeSpecialFile = { fg = c.magenta },
    NvimTreeImageFile = { fg = c.magenta },
    NvimTreeSymlink = { fg = c.cyan },

    NvimTreeIndentMarker = { fg = c.fg_gutter },
    NvimTreeBookmark = { fg = c.yellow },
    NvimTreeBookmarkIcon = { fg = c.yellow },

    NvimTreeGitDirty = { fg = c.git_change },
    NvimTreeGitStaged = { fg = c.git_add },
    NvimTreeGitMerge = { fg = c.git_change },
    NvimTreeGitRenamed = { fg = c.git_change },
    NvimTreeGitNew = { fg = c.git_add },
    NvimTreeGitDeleted = { fg = c.git_delete },
    NvimTreeGitIgnored = { fg = c.git_ignore },

    NvimTreeWindowPicker = { fg = c.fg, bg = c.bg_selection, bold = true },
    NvimTreeCursorLine = { bg = c.bg_highlight },
  }
end

return M
