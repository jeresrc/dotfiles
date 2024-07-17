-- return {
--   "Exafunction/codeium.vim",
--   event = "BufEnter",
--   config = function()
--     -- Change '<C-g>' here to any keycode you like.
--   end,
-- }

return {
  "supermaven-inc/supermaven-nvim",
  config = function()
    require("supermaven-nvim").setup({
      keymaps = {
        accept_suggestion = "<C-g>",
      },
    })
  end,
}
