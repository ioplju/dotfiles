-- Debug
vim.api.nvim_create_user_command('DumpLspClient', function()
    local buf = vim.api.nvim_get_current_buf()
    local clients = vim.lsp.get_clients({ bufnr = buf })
    if #clients == 0 then
        print("No active LSP clients found for this buffer.")
        return
    end
    for _, client in pairs(clients) do
        print("Client name:", client.name)
        print("Client id:", client.id)
        print("Client root_dir:", client.config.root_dir)
        print("Client capabilities:")
        print(vim.inspect(client.server_capabilities))
    end
end, {})

-- Main
local coq = require "coq"

local add_mappings = function(_, bufnr)
    local opts = { noremap = true, silent = true, buffer = bufnr }

    -- Hover
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    -- Go to definition
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    -- Go to references
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    -- Rename
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
    -- Code action
    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts)
    -- Signature help
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
    -- Format
    vim.keymap.set('n', '<leader>f', vim.lsp.buf.format, opts)

    vim.keymap.set('n', 'gS', vim.lsp.buf.document_symbol, opts)
    vim.keymap.set('n', 'gI', vim.lsp.buf.implementation, opts)
    vim.keymap.set('n', 'gD', vim.lsp.buf.type_definition, opts)
    vim.keymap.set('n', 'gH', vim.lsp.buf.typehierarchy, opts)

    local wk = require("which-key")
    wk.register({
        ["K"] = { "Hover" },
        ["gd"] = { "Go to definition" },
        ["gr"] = { "Go to references" },
        ["<leader>rn"] = { "Rename" },
        ["<leader>ca"] = { "Code action" },
        ["<C-k>"] = { "Signature help" },
        ["<leader>f"] = { "Format" },

        ["gS"] = { "Go to symbols" },
        ["gI"] = { "Go to implementation" },
        ["gD"] = { "Go to type definition" },
        ["gH"] = { "Go to type hierarchy" },
    })
end

-- Lua for Neovim
require 'lspconfig'.lua_ls.setup(
    coq.lsp_ensure_capabilities {
        on_init = function(client)
            local path = client.workspace_folders[1].name
            if vim.loop.fs_stat(path .. '/.luarc.json') or vim.loop.fs_stat(path .. '/.luarc.jsonc') then
                return
            end

            client.config.settings.Lua = vim.tbl_deep_extend('force', client.config.settings.Lua, {
                runtime = {
                    version = 'LuaJIT'
                },
                workspace = {
                    checkThirdParty = false,
                    library = {
                        vim.env.VIMRUNTIME,
                        "${3rd}/luv/library"
                        -- "${3rd}/busted/library",
                    }
                    -- or pull in all of 'runtimepath'. NOTE: this is a lot slower
                    -- library = vim.api.nvim_get_runtime_file("", true)
                }
            })
        end,
        on_attach = add_mappings,
        settings = {
            Lua = {}
        }
    }
)

require 'lspconfig'.vimls.setup(
    coq.lsp_ensure_capabilities {
        on_attach = add_mappings,
    }
)

require 'lspconfig'.autotools_ls.setup(
    coq.lsp_ensure_capabilities {
        on_attach = add_mappings,
    }
)

require 'lspconfig'.asm_lsp.setup(
    coq.lsp_ensure_capabilities {
        on_attach = add_mappings,
    }
)

require 'lspconfig'.bashls.setup(
    coq.lsp_ensure_capabilities {
        on_attach = add_mappings,
    }
)

-- vim.fn.system('rm /home/alexandre.baconnet/.local/share/nvim/mason/bin/clangd')
-- vim.fn.system('ln -s /run/current-system/sw/bin/clangd /home/alexandre.baconnet/.local/share/nvim/mason/bin/clangd')
require 'lspconfig'.clangd.setup(
    coq.lsp_ensure_capabilities {
        on_attach = add_mappings,
    }
)

require 'lspconfig'.mesonlsp.setup(
    coq.lsp_ensure_capabilities {
        on_attach = add_mappings,
    }
)

require 'lspconfig'.yamlls.setup(
    coq.lsp_ensure_capabilities {
        on_attach = add_mappings,
        settings = {
            yaml = {
                format = { enable = true },
                validate = false,
                hover = true,
                completion = true,
                schemaStore = { enable = true },
            }
        },
    }
)

-- Python pyls (jedi, ruff, rope, mypy)
local function install_update_pyls_plugins(plugins)
    local pyls_pip = vim.fn.stdpath("data") .. "/mason/packages/python-lsp-server/venv/bin/pip"

    for _, plugin in ipairs(plugins) do
        local pip_install_update = vim.system(
            { pyls_pip, "install", "-U", plugin },
            {},
            function() end
        ):wait()
        if pip_install_update.code ~= 0 then
            vim.api.nvim_err_writeln(string.format("Failed to install/update %s.", plugin))
            vim.api.nvim_err_writeln(pyls_pip)
        end
    end
end

vim.api.nvim_create_autocmd("User", {
    pattern = "MasonToolsUpdateCompleted",
    desc = "Update pylsp's plugins.",
    callback = function()
        local plugins = { "pylsp-mypy", "pylsp-rope", "python-lsp-ruff" }
        install_update_pyls_plugins(plugins)
    end,
})

require 'lspconfig'.pylsp.setup(
    coq.lsp_ensure_capabilities {
        on_attach = add_mappings,
        settings = { pylsp = {
            configurationSources = {},
            plugins = {
                autopep8 = { enabled = false },
                flake8 = { enabled = false },
                jedi = {
                    auto_import_modules = {},
                    extra_paths = {},
                    env_vars = nil,
                    environment = nil,
                },
                jedi_completion = {
                    enabled = true,
                    include_params = true,
                    include_class_objects = true,
                    include_function_objects = true,
                    fuzzy = true,
                    eager = true,
                    resolve_at_most = 25,
                    cache_for = {
                        "numpy",
                        "matplotlib",
                    },
                },
                jedi_definition = {
                    enabled = true,
                    follow_imports = true,
                    follow_builtin_imports = true,
                    follow_builtin_definitions = true,
                },
                jedi_hover = { enabled = false },
                jedi_references = { enabled = true },
                jedi_signature_help = { enabled = true },
                jedi_symbols = {
                    enabled = true,
                    all_scopes = true,
                    include_import_symbols = true,
                },
                mccabe = { enabled = false },
                mypy = {
                    live_mode = true,
                    dmypy = false,
                    strict = false,
                    report_progress = false,
                },
                preload = { enabled = false },
                pycodestyle = { enabled = false },
                pylint = { enabled = false },
                rope_autoimport = {
                    enabled = true,
                    completions = { enabled = true },
                    code_actions = { enabled = true },
                    memory = true,
                },
                rope = {

                },
                rope_completion = { -- TODO What's this ?
                    enabled = true,
                    eager = true,
                },
                ruff = {
                    enabled = true,
                    config = "~/.config/ruff/ruff.toml",
                    formatEnabled = true,
                },
                yapf = { enabled = false },
            },
        } }
    }
)

-- Typst
require 'lspconfig'.tinymist.setup(
    coq.lsp_ensure_capabilities {
        on_attach = add_mappings,
        single_file_support = true,
        root_dir = function()
            return vim.fn.getcwd()
        end,
        settings = {
            exportPdf = "never",
            semanticTokens = "disable",
            onEnterEvent = false,
            systemfonts = true,
            compileStatus = "disable",
            trace = {
                server = "off",
            },
            formatterMode = "typstyle",
        },
    }
)
