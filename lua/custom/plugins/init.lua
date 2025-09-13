-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  'mbbill/undotree',
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    config = true,
  },
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = {
      settings = {
        save_on_toggle = false,
        sync_on_ui_close = false,
        key = function()
          local cwd = vim.loop.cwd()
          local branch = vim.fn.system 'git branch --show-current 2> /dev/null | tr -d "\n"'
          local key = branch .. cwd
          return key
        end,
      },
    },
  },
}
