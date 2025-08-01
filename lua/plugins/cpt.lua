-- return {
--   "catppuccin/nvim",
--   lazy = true,
--   priority = 1000,
--   -- enabled = false,
--   name = "catppuccin",
--   init = function()
--     vim.cmd.colorscheme "catppuccin"
--   end,
--   opts = {
--     background = { light = "latte", dark = "mocha" },
--     transparent_background = not vim.g.neovide,
--     compile_path = vim.fn.stdpath "cache" .. "/catppuccin",
--     compile = true,
--     styles = {
--       comments = { "italic" },
--       functions = { "bold" },
--       keywords = { "italic" },
--       operators = { "bold" },
--       conditionals = { "bold" },
--       loops = { "bold" },
--       booleans = { "bold", "italic" },
--     },
--     integrations = {
--       snacks = {
--         enabled = false,
--         indent_scope_color = "lavender",
--       },
--       treesitter = true,
--       mason = true,
--       blink_cmp = true,
--       native_lsp = {
--         enabled = true,
--         virtual_text = {
--           errors = { "italic" },
--           hints = { "italic" },
--           warnings = { "italic" },
--           information = { "italic" },
--         },
--         underlines = {
--           errors = { "undercurl" },
--           hints = { "undercurl" },
--           warnings = { "undercurl" },
--           information = { "undercurl" },
--         },
--       },
--       mini = {
--         enabled = true,
--       },
--     },
--
--   },
-- }

return {
  "ellisonleao/gruvbox.nvim",
  lazy = false,
  priority = 1000,
  name = "gruvbox",
  init = function()
    vim.cmd.colorscheme "gruvbox"
  end,
  opts = {
    terminal_colors = true, -- add neovim terminal colors
    undercurl = true,
    underline = true,
    bold = true,
    italic = {
      strings = true,
      emphasis = true,
      comments = true,
      operators = false,
      folds = true,
    },
    strikethrough = true,
    invert_selection = false,
    invert_signs = false,
    invert_tabline = false,
    invert_intend_guides = false,
    inverse = true, -- invert background for search, diffs, statuslines and errors
    contrast = "", -- can be "hard", "soft" or empty string
    palette_overrides = {},
    overrides = {},
    dim_inactive = false,
    transparent_mode = not vim.g.neovide, -- don't set background in transparent mode
  },
}
