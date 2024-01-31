return {
  'mfussenegger/nvim-lint',
  config = function()
    require('lint').linters_by_ft = {
      javascript = { 'quick-lint-js' },
      typescript = { 'eslint_d' },
      javascriptreact = { 'quick-lint-js' },
      typescriptreact = { 'eslint_d' },
    }
    vim.api.nvim_create_autocmd({ 'BufEnter', 'InsertLeave', 'BufWritePost' }, {
      callback = function()
        require('lint').try_lint()
      end,
    })
  end,
}
