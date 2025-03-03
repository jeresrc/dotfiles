return {
  "catgoose/nvim-colorizer.lua",
  lazy = false,
  opts = {
    filetypes = { "*" },
    user_default_options = {
      css = true, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
      css_fn = "both", -- Enable all CSS *functions*: rgb_fn, hsl_fn
      -- Available modes for `mode`: foreground, background,  virtualtext
      mode = "background", -- Set the display mode.
      virtualtext = "",
      -- Display virtualtext inline with color.  boolean|'before'|'after'.  True sets to 'after'
      tailwind = true, -- Enable tailwind colors
      tailwind_opts = { -- Options for highlighting tailwind names
        update_names = true, -- When using tailwind = 'both', update tailwind names from LSP results.  See tailwind section
      },
      virtualtext_inline = true,
      virtualtext_mode = "foreground",
      always_update = true,
    },
  },
  config = function(_, opts)
    require("colorizer").setup(opts)
  end,
}
