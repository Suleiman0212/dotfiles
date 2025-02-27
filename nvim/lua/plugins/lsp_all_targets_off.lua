return {
  "mrcjkb/rustaceanvim", -- отключите этот плагин временно
  -- "mrcjkb/rust-tools.nvim",
  dependencies = { "neovim/nvim-lspconfig" },
  opts = {
    server = {
      settings = {
        ["rust-analyzer"] = {
          cargo = {
            allTargets = false,
          },
        },
      },
    },
  },
}
