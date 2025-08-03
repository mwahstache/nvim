return {
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {}
  },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "echasnovski/mini.nvim" },
    opts = {
      options = {
        icons_enabled = true,
        theme = "auto",
        section_separators = { left = "", right = "" },
        component_separators = { left = "", right = "" },
        disabled_filetypes = {
          statusline = {},
          winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        always_show_tabline = true,
        globalstatus = true,
        refresh = {
          statusline = 100,
          tabline = 100,
          winbar = 100,
        }
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = {"branch", "diff", "diagnostics"},
        lualine_c = {"filename"},
        lualine_x = {
          "filetype",
        },
        lualine_y = {"progress"},
        lualine_z = {"location"}
      },
      -- tabline = {
      --   lualine_a = {
      --     {
      --       "buffers",
      --       show_modified_status = true,
      --       symbols = { alternate_file = "" },
      --     }
      --   },
      -- },
    },
  },
  {
    "chentoast/marks.nvim",
    event = "VeryLazy",
    opts = {},
  },
}
