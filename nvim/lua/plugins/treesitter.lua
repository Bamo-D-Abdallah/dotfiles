return {
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate',
        opts = function()
            -- disable this if not using windows
            require('nvim-treesitter.install').compilers = {"zig"}


            require('nvim-treesitter.configs').setup({
                -- A list of parser names, or "all" (the listed parsers MUST always be installed)
                --[[ ensure_installed = {
                    "bash",
                    "c",
                    "css",
                    "csv",
                    "lua",
                    "vim",
                    "vimdoc",
                    "markdown",
                    "markdown_inline",
                    "java",
                    "javascript",
                    "jsdoc",
                    "json",
                    "json5",
                    "dart",
                    "dockerfile",
                    "graphql",
                    "html",
                    "nginx",
                    "php",
                    "phpdoc",
                    "perl",
                    "python",
                    "r",
                    "regex",
                    "rust",
                    "sql",
                    "scss",
                    "tmux",
                    "toml",
                    "tsv",
                    "tsx",
                    "typescript",
                    "typespec",
                    "typoscript",
                    "xml",
                    "yaml"
                },
                ]]--

                -- Install parsers synchronously (only applied to `ensure_installed`)
                sync_install = false,

                -- Automatically install missing parsers when entering buffer
                -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
                auto_install = true,

                ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
                -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

                highlight = {
                    enable = true,

                    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
                    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
                    -- Using this option may slow down your editor, and you may see some duplicate highlights.
                    -- Instead of true it can also be a list of languages
                    additional_vim_regex_highlighting = false,
                },
            })
        end,
    },
    {
        "windwp/nvim-ts-autotag",
        opts = function()
            require('nvim-ts-autotag').setup({
                opts = {
                    -- Defaults
                    enable_close = true, -- Auto close tags
                    enable_rename = true, -- Auto rename pairs of tags
                    enable_close_on_slash = true -- Auto close on trailing </
                },
                -- Also override individual filetype configs, these take priority.
                -- Empty by default, useful if one of the "opts" global settings
                -- doesn't work well in a specific filetype
                per_filetype = {
                    ["html"] = {
                        enable_close = true
                    }
                }
            })
        end
    },
    --[[ {
        'nvim-treesitter/nvim-treesitter-context',
        config = function()
            require('treesitter-context').setup({
                enable = true, -- Enable this plugin (Can be enabled/disabled later via commands)
                max_lines = 0, -- How many lines the window should span. Values <= 0 mean no limit.
                min_window_height = 0, -- Minimum editor window height to enable context. Values <= 0 mean no limit.
                line_numbers = true,
                multiline_threshold = 20, -- Maximum number of lines to show for a single context
                trim_scope = 'outer', -- Which context lines to discard if `max_lines` is exceeded. Choices: 'inner', 'outer'
                mode = 'cursor',  -- Line used to calculate context. Choices: 'cursor', 'topline'
                -- Separator between context and content. Should be a single character string, like '-'.
                -- When separator is set, the context will only show up when there are at least 2 lines above cursorline.
                separator = nil,
                zindex = 20, -- The Z-index of the context window
                on_attach = nil, -- (fun(buf: integer): boolean) return false to disable attaching
            })

            vim.keymap.set("n", "gC", function()
                require("treesitter-context").go_to_context(vim.v.count1)
            end,  { desc="Go to current context (Appears on top of neovim)" }, { silent = true } )
        end,
    } ]]--
}
