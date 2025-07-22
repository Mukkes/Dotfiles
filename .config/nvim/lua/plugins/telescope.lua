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
        end
    }
}
