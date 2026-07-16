return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-macchiato",
    },
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      flavour = "macchiato",
      transparent_background = true,
    },
  },

  -- ponytail: snacks explorer crashes on stale bufnr in diagnostics.lua
  -- (upstream bug, no fix yet); disable diagnostics-in-tree instead of
  -- patching vendor code. Re-enable once fixed upstream.
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        sources = {
          explorer = { diagnostics = false },
        },
      },
    },
  },
}
