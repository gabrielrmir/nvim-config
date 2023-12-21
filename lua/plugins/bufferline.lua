return {
    'akinsho/bufferline.nvim',
    dependencies = {
        'nvim-tree/nvim-web-devicons',
    },
    version = "*",
    config = function ()
        local bufferline = require('bufferline')
        bufferline.setup {
            options = {
                offsets = {
                    {
                        filetype = "NvimTree",
                        text = "File Explorer",
                        highlight = "Directory",
                        separator = ' '
                    }
                },
                indicator = {
                    style = 'none',
                },
                buffer_close_icon = '',
                separator_style = { ' ', ' ' },
            }
        }

        vim.keymap.set('n', '<C-]>', '<cmd>BufferLineCycleNext<CR>', {})
        vim.keymap.set('n', '<C-[>', '<cmd>BufferLineCyclePrev<CR>', {})
        vim.keymap.set('n', '<leader>x', '<cmd>bd<CR>', {})
    end,
}
