return {
  { "Shatur/neovim-ayu" },
  { "ellisonleao/gruvbox.nvim" },
  { "catppuccin/nvim", as = "catppuccin" },
  { "folke/tokyonight.nvim" },
  { "EdenEast/nightfox.nvim" },
  { "jeresc/night-owl.nvim" },
  {
    "jeresc/vesper.nvim",
    config = function()
      local mix = require("vesper.utils").mix
      local p = require("vesper.colors")

      require("vesper").setup({
        palette_overrides = {
          fg = mix("#FFFFFF", "#000000", math.abs(0.90)),
          primary = mix("#FFFFFF", "#000000", math.abs(0.90)),
          purple = "#FBADFF",
        },
        overrides = {
          Keyword = { fg = p.purple },
          Operator = { fg = p.purple },
          ["@punctuation.separator.keyvalue"] = { fg = p.purple },

          -- tsx
          ["@import.identifier.tsx"] = { fg = p.fg },

          -- typescript
          ["@import.identifier.typescript"] = { fg = p.fg },
        },
      })
    end,
  },
  -- { "olivercederborg/poimandres.nvim" },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "night-owl",
    },
  },
}
