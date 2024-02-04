--[[ -- /Users/ship/.config/nvim/after/ftplugin/text.lua

vim.lsp.start {
    name = "LSP From Scratch",
    cmd = {
        "npx", "ts-node",
        -- Update this with the path to your server.ts
        vim.fn.expand("../lsp/server.ts")
    },
    capabilities = vim.lsp.protocol.make_client_capabilities()
} ]]
