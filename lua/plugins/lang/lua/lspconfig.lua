return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      lua_ls = {
        mason = true,
        -- mason = false, -- set to false if you don't want this server to be installed with mason
        -- Use this to add any additional keymaps
        -- for specific lsp servers
        -- ---@type LazyKeysSpec[]
        -- keys = {},
        settings = {
          Lua = {
            hint = {
              enable = true,
              setType = true,
              paramType = true,
              paramName = true,
              semicolon = true,
              arrayIndex = true,
            },
          },
        },
      },
    },
  },
}
