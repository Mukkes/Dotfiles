return {
    {
        "neovim/nvim-lspconfig",
        config = function()
            require("lspconfig").clangd.setup {
                cmd = {
                    "clangd",
                    "--fallback-style=webkit"
                }
            }
        end,
    }
}
