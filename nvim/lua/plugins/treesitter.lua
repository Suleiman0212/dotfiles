return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = { "wgsl" }, -- добавляем WGSL
    highlight = { enable = true },
    incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = "gnn",
        node_incremental = "grn",
        scope_incremental = "grc",
        node_decremental = "grm",
      },
    },
  },
  config = function(_, opts)
    require("nvim-treesitter.configs").setup(opts)

    -- Добавляем поддержку WGSL
    vim.filetype.add({ extension = { wgsl = "wgsl" } })

    local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
    parser_config.wgsl = {
      install_info = {
        url = "https://github.com/szebniok/tree-sitter-wgsl",
        files = { "src/parser.c" },
      },
    }

    -- Настройки для сворачивания кода
    vim.wo.foldmethod = "expr"
    vim.wo.foldexpr = "nvim_treesitter#foldexpr()"
    vim.o.foldlevelstart = 99
  end,
}
