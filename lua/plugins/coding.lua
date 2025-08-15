return {
  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
      {
        -- "OXY2DEV/markview.nvim",
        -- opts = {
        --   preview = {
        --     hybrid_modes = { "n" },
        --   },
        -- },
      },
    },
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline" },
        sync_install = false,
        auto_install = true,
        ignore_install = { "latex" },
        highlight = {
          enable = true,
          aditional_vim_regex_highlighting = false,
        },
        indent = { enable = true }
      })
    end,
  },
  {
    "mason-org/mason.nvim",
    opts = {},
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "saghen/blink.cmp"
    }
  },
  {
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' }, -- if you use the mini.nvim suite
    opts = {},
  },
  {
    "lervag/vimtex",
    lazy=false,
    init = function()
      vim.g.vimtex_view_method = "zathura"
    end
  },

  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = "cd app && yarn install",
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
    ft = { "markdown" },
  },
  {
    "saghen/blink.compat",
    -- use v2.* for blink.cmp v1.*
    version = "2.*",
    -- lazy.nvim will automatically load the plugin when it"s required by blink.cmp
    lazy = true,
    -- make sure to set opts so that lazy.nvim calls blink.compat"s setup
    opts = {},
  },
  {
    "saghen/blink.cmp",
    dependencies = {
      -- "rafamadriz/friendly-snippets",
      "micangl/cmp-vimtex",
    },
    version = "1.*",

    ---@module "blink.cmp"
    ---@type blink.cmp.Config
    opts = {
      keymap = { preset = "default" },
      sources = {
        default = { "lsp", "path", "snippets", "buffer", "vimtex" },
        providers = {
          vimtex = {
            name = "vimtex",
            module = "blink.compat.source",
          }
        }
      },
    },
    opts_extend = { "sources.default" }
  }
}
