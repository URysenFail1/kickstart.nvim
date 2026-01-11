return {
  'folke/tokyonight.nvim',
  lazy = false,
  priority = 1000,
  config = function()
    ---@diagnostic disable-next-line: missing-fields
    require('tokyonight').setup {
      transparent = true,
      styles = {
        sidebars = 'transparent',
        floats = 'transparent',
        comments = { italic = false },
      },
    }
    vim.keymap.set('n', '<leader>bg', function()
      local tokyonight = require 'tokyonight'
      local config = require 'tokyonight.config'
      vim.cmd 'colorscheme tokyonight'
      -- Toggle the boolean state and set colorscheme/theme.
      config.options.transparent = not config.options.transparent
      -- Re-run setup
      tokyonight.setup(config.options)
    end, { desc = 'Toggle TokyoNight transparency' })
  end,
}
