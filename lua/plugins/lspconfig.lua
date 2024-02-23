return {
  'neovim/nvim-lspconfig',
  config = function()
    local lspconfig = require 'lspconfig'

    -- lua
    lspconfig.lua_ls.setup {
      settings = {
        Lua = {
          diagnostics = {
            globals = { 'vim' },
          },
        },
      },
    }

    -- tailwindcss
    lspconfig.tailwindcss.setup {
      root_dir = function(...)
        return require('lspconfig.util').root_pattern '.git'(...)
      end,
    }

    -- volar for VUE
    local cwd = vim.fn.getcwd()
    local util = require 'lspconfig.util'
    local project_root = util.find_node_modules_ancestor(cwd)

    local vue_path = util.path.join(project_root, 'node_modules', 'vue')
    local is_vue = vim.fn.isdirectory(vue_path) == 1
    if is_vue then
      lspconfig.volar.setup {
        filetypes = { 'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue', 'json' },
      }
    end
  end,
}
