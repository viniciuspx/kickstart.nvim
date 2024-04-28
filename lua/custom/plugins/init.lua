-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  -- Nvim Tree
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = false,
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require('nvim-tree').setup {}
  end,
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },
  },
  {
    'folke/todo-comments.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
  },
  -- TODO: Nice todo!
  -- HACK: Some macarronic code
  -- PERF: i cant beliave i done this
  -- NOTE: noted
  -- FIX: fix this
  -- WARNING: This is a warning
  'NvChad/nvim-colorizer.lua',
  {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    config = function()
      require('dashboard').setup {
        -- config
      }
    end,
    dependencies = { { 'nvim-tree/nvim-web-devicons' } },
  },

  { 'akinsho/git-conflict.nvim', version = '*', config = true },
  'f-person/git-blame.nvim',
  { 'bluz71/vim-moonfly-colors', name = 'moonfly', lazy = false, priority = 1000 },
}
