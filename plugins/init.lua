return {
  {"github/copilot.vim"},
  {
    "jose-elias-alvarez/null-ls.nvim",
    after = "nvim-lspconfig",
    config = function()
         require("custom.plugin_confs.null-ls").setup()
    end,
  },
  {"williamboman/nvim-lsp-installer"}
}
