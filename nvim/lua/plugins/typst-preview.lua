return {
  'chomosuke/typst-preview.nvim',
  lazy = false, -- or ft = 'typst'
  build = function() require'typst-preview'.update() end,
  opts = {
    invert_colors = "auto",
    follow_cursor = true,
    dependencies_bin = {
      ["typst-preview"] = "tinymist",
    },
  },
}
