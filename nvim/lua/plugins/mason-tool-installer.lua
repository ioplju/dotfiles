return {
  "WhoIsSethDaniel/mason-tool-installer.nvim",
  dependencies = { "williamboman/mason.nvim" },
  lazy = false,
  opts = {
    ensure_installed = {"awk_ls", "bashls", "clangd", "neocmake", "lua_ls", "vimls",},
    auto_update = true,
    run_on_start = true,
    start_delay = 0,
    debounce_hours = 10,
    integrations = {
      ['mason-lspconfig'] = true,
      -- ['mason-null-ls'] = true,
      -- ['mason-nvim-dap'] = true,
    }
  },
}
