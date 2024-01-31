return {
  'sainnhe/everforest',
  priority = 1000,
  config = function()
    vim.g.everforest_background = 'soft'
    vim.g.everforest_enable_italic = 1
    vim.g.everforest_transparent_background = 2
    vim.g.everforest_diagnostic_virtual_text = 'colored'
    vim.g.everforest_better_performance = 1
    vim.cmd [[colorscheme everforest]]
  end,
}
