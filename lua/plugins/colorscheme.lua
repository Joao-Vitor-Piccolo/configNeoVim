return {
    "navarasu/onedark.nvim",
    lazy = false,
    priority = 1000,
    opts = {
        -- Estilos disponíveis: 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'
        style = 'darker',
        transparent = true, -- Altere para true se quiser transparência
        term_colors = true,
        ending_tildes = false,
        cmp_itemkind_reverse = false,
        code_style = {
            comments = 'italic',
            keywords = 'italic',
            functions = 'none',
            strings = 'none',
            variables = 'none'
        },
    },
    config = function(_, opts)
        require('onedark').setup(opts)
        vim.cmd('colorscheme onedark')
    end,
}
