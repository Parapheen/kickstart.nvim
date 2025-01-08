-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*', -- Automatically fetch the latest version
  dependencies = {
    'nvim-lua/plenary.nvim', -- Utility library
    'nvim-tree/nvim-web-devicons', -- Icons (optional but recommended)
    'MunifTanjim/nui.nvim', -- UI components
  },
  cmd = 'Neotree', -- Load the plugin only when the `:Neotree` command is used
  keys = {
    { '<leader>\\', ':Neotree toggle<CR>', desc = 'NeoTree toggle', silent = true },
  },
  opts = {
    window = {
      position = 'right', -- Position NeoTree on the right side of the screen
    },
    filesystem = {
      filtered_items = {
        visible = true, -- Show filtered items
        hide_dotfiles = false, -- Don't hide dotfiles
        hide_gitignored = true, -- Hide files ignored by Git
      },
    },
  },
  config = function(_, opts)
    require('neo-tree').setup(opts) -- Apply the options
    -- Keybinding for quick reveal
    vim.keymap.set('n', '\\', ':Neotree toggle<CR>', { noremap = true, silent = true, desc = 'NeoTree toggle' })
  end,
}
