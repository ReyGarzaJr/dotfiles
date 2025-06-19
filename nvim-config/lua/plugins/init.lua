return {
  "folke/which-key.nvim",
  {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
      require("rose-pine").setup({
        styles = {
          italic = false
        },
      })
      vim.cmd("colorscheme rose-pine")
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("lspconfig").lua_ls.setup({
        settings = {
          Lua = {
            diagnostics = { globals = { "vim" } },
          },
        },
      })
    end,
  },
  {
    "mason-org/mason.nvim",
    opts = {}
  },
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup {
        ensure_installed = { "nix", "lua" },
        highlight = {
          enable = true,
        },
      }
    end,
  },
  {"dstein64/vim-startuptime",}
}
