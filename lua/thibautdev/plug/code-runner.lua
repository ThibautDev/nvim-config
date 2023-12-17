return { 
    "CRAG666/code_runner.nvim",
    config = function()
        require('code_runner').setup({
            filetype = {
                python = "python3 -u",
                typescript = "deno run",
                rust = {
                    "cd $dir &&",
                    "rustc $fileName &&",
                    "$dir/$fileNameWithoutExt"
                },
                c = {
                    "cd $dir &&",
                    "gcc $fileName -o $fileNameWithoutExt &&",
                    "$dir/$fileNameWithoutExt"
                }
            },
        })
        -- set keymaps
        local keymap = vim.keymap -- for conciseness

        vim.keymap.set('n', '<leader>rr', ':RunCode<CR>', { noremap = true, silent = false })
        vim.keymap.set('n', '<leader>rc', ':RunClose<CR>', { noremap = true, silent = false })
    end
}
