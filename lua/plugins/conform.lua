return {
    "stevearc/conform.nvim",
    opts = {},
    config = function ()
       local conform = require("conform") 
       conform.setup({
        formatters_by_ft = {
        javascript = { "prettier" },
        javascriptreact = { "prettier" },
        typescript = { "prettier" },
        typescriptreact = { "prettier" },
        json = { "prettier" },
        yaml = { "prettier" },
        markdown = { "prettier" },
        html = { "prettier" },
        css = { "prettier" },
        scss = { "prettier" },
    },
    format_on_save = {
        timeout_ms = 500,
        lsp_fallback = true,
    },
})
    end
}
