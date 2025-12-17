return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      -- This applies to all pickers (files, grep, etc.)
      hidden = true,
      sources = {
        -- This explicitly targets the explorer source
        explorer = {
          hidden = true,
        },
      },
    },
  },
}
