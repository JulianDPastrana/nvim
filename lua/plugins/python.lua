return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, { "python" })
    end,
  },

  -- LSP: only pyright + ruff, mason-installed. No basedpyright/ruff_lsp/debugpy/neotest.
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pyright = {},
        ruff = {},
      },
    },
  },

  -- venv switching: <leader>cv
  {
    "linux-cultist/venv-selector.nvim",
    cmd = "VenvSelect",
    ft = "python",
    opts = {},
    keys = {
      { "<leader>cv", "<cmd>VenvSelect<cr>", desc = "Select VirtualEnv", ft = "python" },
    },
  },

  -- silence noice's "pyright: analyzing..." corner popup (this is a global
  -- noice option, not python-specific, but pyright is what triggers it here)
  { "folke/noice.nvim", opts = { lsp = { progress = { enabled = false } } } },
}
