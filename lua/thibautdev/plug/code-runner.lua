return { 
    "CRAG666/code_runner.nvim",
    config = function()
        -- set keymaps
        local keymap = vim.keymap -- for conciseness

        vim.keymap.set('n', '<leader>rr', ':RunCode<CR>', { noremap = true, silent = false })
        vim.keymap.set('n', '<leader>rc', ':RunClose<CR>', { noremap = true, silent = false })
    end
}
