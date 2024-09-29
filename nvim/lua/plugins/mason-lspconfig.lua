return {
  "williamboman/mason-lspconfig.nvim",
  lazy = false, -- true, -- wait for lspconfig to load it
  dependencies = {
    {
      "williamboman/mason.nvim",
      lazy = false,
      opts = {}, -- implicitely call `setup()`
    }
  },
  opts = {
    ensure_installed = {
      --[[
      -- python TODO
      "ruff", -- linter, formatter through lsp
      -- "mypy", type checking only => move
      "pyright", "basedpyright", "pyre", "pylyzer", -- type checking + lsp
      "jedi_language_server", "pylsp", -- lsp
      "jinja_lsp",

      "arduino_language_server",
      "asm_lsp",
      "ast_grep",
      "autotools_ls",
      "awk_ls",
      -- "bacon-ls",
      "biome",
      "bashls",
      "clangd",
      "cmake",
      "css_variables",
      "cssls",
      "cssmodules_ls",
      "denols",
      "diagnosticls",
      -- "digestif",
      "dockerls",
      "dprint",
      "efm",
      "eslint",
      "gitlab_ci_ls",
      "gradle_ls",
      "grammarly",
      "harper_ls",
      -- "hyprls",
      "html",
      "htmx",
      "java_language_server",
      "jdtls",
      "jsonls",
      "kotlin_language_server",
      "lemminx",
      "ltex",
      "lua_ls",
      "markdown_oxide",
      "marksman",
      "neocmake",
      "ocamllsp",
      "prosemd_lsp",
      "quick_lint_js",
      "remark_ls",
      "rust_analyzer",
      "somesass_ls",
      "sqlls",
      "sqls",
      "stylelint_lsp",
      "tailwindcss",
      "taplo",
      -- "termux-language-server",
      "texlab",
      -- "textlsp",
      "tinymist",
      "tsserver",
      "typos_lsp",
      -- "typst-lsp",
      -- "typstfmt",
      "unocss",
      "vimls",
      "yamlls",
      "zk",
      --]]
    },
    automatic_installation = true,
    handlers = nil,
  },
}
