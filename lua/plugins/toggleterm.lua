return {
  {
    "akinsho/toggleterm.nvim",
    branch = "main",
    config = function()
      require("toggleterm").setup({
        -- Key mapping to toggle the terminal
        open_mapping = [[<C-u>]],
        -- Use a floating window
        direction = "float",
        -- Floating window options
        float_opts = {
          border = "curved",
          width = math.floor(vim.o.columns * 0.8),
          height = math.floor(vim.o.lines * 0.8),
          winblend = 0,
        },
      })
    end,
  },
}
