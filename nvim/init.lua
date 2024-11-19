-- Warning: To avoid a harmless error, launch nvim without a file on first run.

-- Coq setup
vim.g.coq_settings = {
  auto_start = true,
  clients = {
    snippets = {
      user_path = "coq-user-snippets",
    },
  },
  display = {
    mark_applied_notify = true,
    ghost_text = { enabled = false, },
    preview = {
      enabled = true,
      border = "rounded",
    },
    icons = { mode = "none" },
    statusline = { helo = false },
  },
  keymap = {
    recommended = true,
  },
  match = { max_results = 20 },
}

-- Treesitter setup
--[[ TODO why folded by default
vim.wo.foldmethod = 'expr'
vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
]]

-- Nabla setup
--[[
-- Customize with popup({border = ...})  : `single` (default), `double`, `rounded`
vim.api.nvim_set_keymap('n', '<leader>p', ':lua require("nabla").popup({border = "rounded"})<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>o', ':lua require("nabla").toggle_virt({autogen = true, silent = false})<CR>', {noremap = true, silent = true})
]]

require("config.globals")
require("config.options")
require("config.lazy")
require("config.lsp")
require("config.misc")
