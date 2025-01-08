return {
  'zk-org/zk-nvim',
  config = function()
    require('zk').setup {
      picker = 'telescope',
    }

    vim.api.nvim_set_keymap('n', '<leader>zn', "<Cmd>ZkNew { title = vim.fn.input('Title: ') }<CR>", {
      noremap = true,
      silent = false,
      desc = 'Create new [Z]ettelkasten [N]ote',
    })

    vim.api.nvim_set_keymap('n', '<leader>zo', "<Cmd>ZkNotes { sort = { 'modified' } }<CR>", {
      noremap = true,
      silent = false,
      desc = 'Open [Z]ettelkasten [O]pen',
    })
    vim.api.nvim_set_keymap('n', '<leader>zt', '<Cmd>ZkTags<CR>', {
      noremap = true,
      silent = false,
      desc = 'Open [Z]ettelkasten [T]ags',
    })
  end,
}
