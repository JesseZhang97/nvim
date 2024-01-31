return {
    "pmizio/typescript-tools.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
    config = function()
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
      vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
      vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, opts)
      vim.keymap.set("n", "<space>m", "<cmd>TSToolsOrganizeImports<cr>")
      vim.keymap.set("n", "<space>a", "<cmd>TSToolsAddMissingImports<cr>")
      local api = require("typescript-tools.api")
      require("typescript-tools").setup({
        settings = {
          tsserver_file_preferences = {
            importModuleSpecifierPreference = "non-relative",
          },
        },
      })
      vim.api.nvim_create_autocmd("BufWritePre", {
        pattern = "*.ts,*.tsx,*.js,*.jsx",
        callback = function(args)
          vim.cmd("TSToolsAddMissingImports sync")
          vim.cmd("TSToolsOrganizeImports sync")
          require("conform").format({ bufnr = args.buf })
        end,
      })
    end,
  }
