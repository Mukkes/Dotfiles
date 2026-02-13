return {
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.8',
        dependencies = {
            'nvim-lua/plenary.nvim',
            { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
        },
        config = function()
            require('telescope').setup {
                extensions = {
                    fzf = {}
                },
                pickers = {
                    find_files = {
                        hidden = true
                    }
                }
            }

            require('telescope').load_extension('fzf')

            --vim.keymap.set("n", "<leader>f", function()
            --    local is_git = os.execute('git rev-parse --is-inside-work-tree') == 0
            --    if is_git then
            --        require('telescope.builtin').git_files()
            --    else
            --        require('telescope.builtin').find_files()
            --    end
            --end)
            vim.keymap.set("n", "<leader>f", require('telescope.builtin').find_files)
            vim.keymap.set("n", "<leader>h", require('telescope.builtin').help_tags)
            vim.keymap.set("n", "<leader>g", require('telescope.builtin').live_grep)
            vim.keymap.set("n", "<leader>b", require('telescope.builtin').buffers)
            vim.keymap.set("n", "<leader>s", require('telescope.builtin').lsp_document_symbols)
            -- Works only for open files/files in buffer.
            -- Apparently this has something to do with clang.
            -- It might just work with other lsp.
            vim.keymap.set("n", "<leader>r", require('telescope.builtin').lsp_references)
        end
    }
}
