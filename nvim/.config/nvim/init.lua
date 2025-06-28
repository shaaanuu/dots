require("config.lazy")

-- Tab settings
vim.opt.tabstop = 2        -- Number of spaces that a <Tab> counts for
vim.opt.shiftwidth = 2     -- Number of spaces to use for each step of (auto)indent
vim.opt.expandtab = true    -- Use spaces instead of tabs

-- Highlight settings
vim.cmd [[
  highlight Normal guibg=NONE ctermbg=NONE
  highlight NormalNC guibg=NONE ctermbg=NONE
]]


