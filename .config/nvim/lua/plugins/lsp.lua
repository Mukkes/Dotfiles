return {
    {
        "neovim/nvim-lspconfig",
        config = function()
            require("lspconfig").ccls.setup {}
        end,
    }
}
