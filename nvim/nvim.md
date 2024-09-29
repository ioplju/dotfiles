# Goals

## Use cases
### Math
- latex
    - vimtex + texpresso (live preview)
- typst
    - native live preview (more efficient than texpresso ??)
- markdown + inline latex
    - nabla.nvim (acsii art)
    - TODO markdown plugins

### Knowledge

### Organisation



## Worth noting repo (until ~1k)
### Plugins
- nvim-telescope/telescope.nvim
- folke/lazy.nvim
- nvim-treesitter/nvim-treesitter
- neovim/nvim-lspconfig (quickstart configs)
- junegunn/fzf.vim
- williamboman/mason.nvim (manage LSP/DAP/linters/formatters)
- nvim-tree/nvim-tree.lua (file explorer)
- preservim/tagbar
- nvim-lualine/lualine.nvim (statusline)
- trouble.nvim (diagnostics, quickfix)
- mfussenegger/nvim-dap
- folke/which-key.nvim
- echasnovski/mini.nvim (multi-tools)
- ggandpr/leap.nvim (core)
- folke/noice.nvim (ui changes)
- akinsho/toggleterm.nvim (terminal)
- lukas-reineke/indent-blankline.nvim (indent guide)
- numToStr/Comment.nvim 
- stevearc/oil.nvim (file manager)
- ms-jpg/coq_nvim (completion)
- nvim-neo-tree/neo-tree.nvim (filesystem/trees browser)
- akinsho/bufferline.nvim (tabs)
- L3MON4D3/LuaSnip
- justinmk/vim-sneak (core)
- prabirshrestha/vim-lsp (async lsp server)
- windwp/nvim-autopairs
- kylechui/nvim-surround
- folke/todo-comments.nvim
- vim-test/vim-test
- rcarriga/nvim-notify
- stevearc/conform.nvim (formatter)
- nvim-lua/plenary.nvim (lib)
- williamboman/mason-lspconfig.nvim
- wellle/targets.vim (core)
- voldikss/vim-floaterm (terminal)
- rcarriga/nvim-dap-ui (DAP)
- nvim-treesitter/nvim-treesitter-context
- nvimtools/none-ls.nvim (LSP)
- folke/flash.nvim (core)
- nvimdev/dashboard-nvim (start screen)
- kevinhwang91/nvim-ufo (core)
- romgrk/barbar.nvim (tabs)
- nvim-neotest/neotest
- RRethy/vim-illuminate (core)
- nvim-treesitter/nvim-treesitter-textobjects
- ibhagwan/fzf-lua
- ray-x/lsp_signature.nvim
- sbdchd/neoformat (formatter)
2k
- j-hui/fidget.nvim (notifications, LSP progress msg)
- liuchengxu/vista.vim (LSP symbols, tags)
- skywind3000/asyncrun.vim
- mfussenegger/nvim-lint
- stevearc/dressing.nvim (ui)
- Olical/conjure (code eval)
- kevinhwang91/nvim-bqf (ui)
- ms-jpq/chadtree (file manager)
- nvim-telescope/telescope-file-browser.nvim
- stevearc/aerial.nvim code outline
- folke/zen-mode.nvim
- MunifTanjim/nui.nvim (core, lib)
- michaelb/sniprun (code eval)
- ray-x/navigator.lua (LSP, treesitter)
- lambdalisue/vim-fern (tree)
- danymat/neogen (annotations)
- wellle/context.vim (core)
- folke/twilight.nvim
- m4xshen/hardtime.nvim
- rmagatti/auto-session
- JoosepAlviste/nvim-ts-context-commentstring (treesitter)
- mrjones2014/legendary.nvim (legend)
- stevearc/overseer.nvim (runner)
- rebelot/heirline.nvim (status bar)
- kkoomen/vim-doge
- Wansmer/treesj
- Vigemus/iron.nvim (repl)
- Bekaboo/dropbar.nvim 
- skywind3000/asynctasks.vim
- brooth/far.vim (core)

#### Git
- airblade/vim-gitgutter
- lewis6991/gitsignes.nvim
- sindrets/diffview.nvim
- mhinz/vim-signify 3M+
- pwntester/octo.nvim (github)
2k
- kdheepak/lazygit.nvim

#### Themes
- folke/tokyonight.nvim
- catppuccin/nvim
- rebelot/kanagawa.nvim
- daltonmenezes/aura-theme
- EdenEast/nightfox.nvim
- rafi/awesome-vim-colorschemes
- rose-pine/neovim
- projekt0n/github-nvim-theme
2k
- ellisonleao/gruvbox.nvim
- sonph/onehalf
- kepano/flexoki
- navarasu/onedark.nvim
- jacoborus/tender.vim
- marko-cerovac/material.nvim

#### Markdown
- iamcco/markdown-preview.nvim (preview) 9M
2k
- artempyanykh/marksman
- ellisonleao/glow.nvim 7M

#### Latex
- lervag/vimtex
2k

#### PKM
- epwalsh/obsidian.nvim
2k
- nvim-telekasten/telekasten.nvim 3M

#### Organisation
- nvim-neorg/neorg
- nvim-orgmode/orgmode
2k

#### Langage specific
2k
- ray-x/go.nvim
- kristijanhusak/vim-dadbod-ui (db)
- mrcjkb/rustaceanvim
- akinsho/flutter-tools.nvim

### Misc
- mhinz/vim-galore
- rockerBOO/awesome-neovim
- sxyazi/yazi (CLI file manager)
2k


### TODO
 - ale
 - none-ls


# Nvim
## User guide
- actions
    - open link `Enter`
    - open documentation `K`
    - completion `CTRL-n` `CTRL-p` DIFF ??
    - `CTRl-g` show location in file
    - `ZZ` writes file then exit
    - scroll
        - `ctrl-u` `ctrl-d` scroll up/down half a screen
        - `ctrl-f` `ctrl-b` scroll up/down a screen
        - `ctrl-e` `ctrl-y` scroll up/down one line
        - `zz` `zt` `zb` scroll to see context around/atop/below line 
        - `'scrolloff'` option TODO
    - `CTRL-]` jump to tag
    - `CTRL-t` pop tag

- motions
    - motion -> word = group of letters and `_`
    - MOTION -> word = group of characters separated by a space
    - `w` `b` start of word
    - `e` `ge` end of word
    - `0` `$` first/last column
        - `5$`
    - `^` `g_` first/last non-blank char of the line
    - `fX` `tX` at/before next `X` in the line
        - `;` `,` occurence in same/opposite direction
        - `F` `T` backward
    - `gg` `G` `542G` `54%` jump
    - `H` `M` `L` jump to home/middle/last line
    - `/` `?` search (jump)
        - `n` `N` jump to next term in same/opposite direction
        - `\c` ignore case
        - support history
    - `%` jump to matching `()[]{}`
        - eventually search forward in a line for a starting character
    - `*` `#` jump to next/previous word occurence
        - `g` prefix to allow englobing matches

- search patterns
    - `\` escape pattern
    - `^` `$` start/end OL
    - `.` 1 char

- jumps and marks
    - `'` or backtick + mark
    - `CTRL-o` jump to older position
    - `tab` or `CTRL-i` jump to newer position
    - `:jumps`
    - `m{a-z}` put a namedcmark
    - `:marks`
    - special marks
        - `'` or backtick last jump
        - `"` last editing
        - `[` `]` start/end OF

- operators
    - `d` `dd`
    - `r` `R` replace 1/multiple chars
    - `c`
    - `y` `yy` yank
    - `gU` `gu` make upper/lower case
    - `J` join lines
    - `u` `CTRl-R` undo redo
    - `U` undo line ; it's a change
    - `p` `P` put after before
    - `o` `O` open a line below/above
    - `i` `a` `A` insert before/after/at_EOL
    - `<>= x2` indent +/-/auto
    - `.` repeat last editing action
    - `CTRL-a` increment

- visual selection
    - `v` `V` char/line
    - zone selection
        - `action a/i object` inclusive/exclusive
            - `object` -> `wWsp"')}]` sentence/paragraph
    - rectangular selection
        - `CTRL-v`
    - actions
        - `I` `A`

- macros
    - `qXY` record macro Y in register X
    - `@X` play the macro stored in X
    - `@@` play the last saved macro

- commands
    - support history
    - `CTRL-D` show completions
    - `TAB` show rolling tab with completions
        - and pre-write the next completion
        - `SHIFT-TAB` previous completion
    - `:help` | `F1`
        - `-index` suffix
        - `user-manual`
        - contexts
            - `v_` `i_` `c_` visual insert cmd-editing
            - `:` `-` `''` `/` `E42 {} quote expr-` cmd cmd-arg option regex error subject, register ??
    - `:helpgrep`
    - `:set options`
        - options
            - `no` `inv` prefixes
            - `ic` ignore case
            - `is` increase search
            - `hls` highlight search
    - `:split` `:vsplit`
        - `CTRL-w dir` jump
        - `CTRL-w x2` jump b2w windows
        - `CTRL-w _|+-` maximize vertically/horizontally/grow/shrink
    - `:opt_1s/old/new/opt_2`
        - opt_1: `n,m` inclusive range, `%` whole file
        - opt_2: `g` globally in line, `gc` prompt for each match
    - `:!ext_cmd`
    - `:w file`
    - `:r file|command` put below
    - `:q`
    - `:e` ?? (`:e!` reload file)
    - `:nohlsearch` unhighlight things

## Vim-galore
- buffers
    - `:ls` `:ls!` listed/all buffers
- argument list
    - `:args [files]` `:arglocal [files]`
    - `:next` `:previous` `:first` `:last`
    - `:argadd` `:argdelete`
    - `:argdo`
- mapping
    - `:[n|x|c|o|i][nore|un]map` normal visual cli operator_pending insert
        - "recursive" = transitive
        - `:map` -> `nxo`
        - `<nop>` used to disable standard mapping
        - `<leader>` `<localleader>`

## Lua guide
- running things
    - `:lua lua_code`
    - `:source file.{lua|vim}`
    - calling functions
        - vim `vim.fn.func(args)`
        - nvim `vim.api.func(args)`
        - vim (low level) `nvim_call_function(func, args)`
    - running jobs/processes
        - `vim.system({cmd}, opts, callback)->SystemObj`
            - lua API, simpler
            - `cmd` `pid` `kill` `write` `is_closing`
            - `..:wait()->obj`
        - `jobstart(cmd [,opts])->job_id`
            - Vim API, more control
            - cmd = `string|table`


- variables
    - `vim.`
    - **g**lobal, **b**uffer, **w**indow, **t**abpage , **v**im, **env**
    - `[N]` targeting a specific buffer/window/tabpage

- options
    - `:set` `:setglobal` `:setlocal`
        - `opt=val`
        - `:setlocal opt=` (string only) make the local empty so the global is used
        - `:setlocal opt<` copy the global to the local
        - `:setlike{+|^|-}=` add/append multiply|prepend substract/remove
    - `vim.opt` `vim.opt_global` `vim.opt_local`
        -`..option:{append|prepend|remove}()`
        - `..option:get()`
    - `vim.[g|b|w]o`
        - direct read/write access
- mapping
    - `vim.keymap.set(modes, lhs, rhs [, opts])`
        - opts = table with optional keys (default=`false|""`)
            - `buffer={N|true}`
            - `silent=true`
            - `expr=true`
            - `desc=string`
            - `remap=true`
    - `vim.keymap.del(modes, lhs)`
    - `nvim_get_keymap()`
    - `nvim_buf_get_keymap()`

- autocommands
    - `nvim_create_autocmd(events, opts)`
        - opts:
            - `pattern=table|string` ="*" or `buffer`
            - `command="vim_command"` or `callback=lua_func(args)`
                - args = `{match, buf, file, data}`
            - `group=group|"group_name"`
            - `desc=string`
    - `nvim_clear_autocmds(opts)`
        - opts = same as `create()`
    - groups
        - `nvim_create_augroup("group_name", opts)->group`
            - opts: `clear` whether to clear the group an its commands if it exists

- user commands
    - `nvim_[buff_]create_user_command([buf_N,] "cmd_name", "vim_func"|lua_func(args), opts)`
       - opts = `desc` `force` (replace cmd) `preview` `nargs` `complete`
       - args = `name` `fargs` `bang` `line1 line2 range count` `smods`
    - `nvim_[buf_]del_user_command("cmd_name")`

- tips
    - `:lua=` = `:lua vim.print(..)`
    - `vim.cmd.colorscheme("habamax")` = `vim.cmd({"colorscheme", "habamax"})` = `vim.cmd("colorscheme habamax")`
    - `vim.cmd([[multiline w/o special char]])`

- TODO usr_04
