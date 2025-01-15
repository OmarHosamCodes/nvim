return {
  {
    "akinsho/flutter-tools.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "stevearc/dressing.nvim" },
    config = function()
      require("flutter-tools").setup({
        lsp = {
          color = { enabled = true }, -- Enable color support
          on_attach = function(client, bufnr)
            -- Customize keymaps or LSP settings if needed
          end,
        },
        debugger = {
          enabled = true, -- Enable debugging
          run_via_dap = true, -- Use nvim-dap
        },
      })
    end,
  },
}
