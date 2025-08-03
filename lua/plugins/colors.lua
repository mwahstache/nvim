local purp = {
  base = "#2f2333",
  mantle = "#211a22",
  surface0 = "#4d3251",
  surface1 = "#6b4670",
  surface2 = "#895990",
  text = "#edebe4",
  rosewater = "#f5e0dc",
  lavender = "#c2caff",
  red = "#f688a7",
  peach = "#fcb385",
  yellow = "#fbe2ad",
  green = "#a3e79d",
  teal = "#90e5d7",
  blue = "#65a0ff",
  mauve = "#caa1fc",
  flamingo = "#f4cbcb",
}

return {
  {
    "catppuccin/nvim",
    priority = 1000,
    opts = {
      transparent_background = true,
      color_overrides = {
        mocha = purp,
      },
    },
    config = function(_, opts)
      require("catppuccin").setup(opts)
    end
  },
  -- {
  --   "RRethy/base16-nvim",
  -- },
}

