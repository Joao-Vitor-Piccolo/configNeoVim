return {
    'nvim-telescope/telescope.nvim', tag = 'v0.1.9',
      dependencies = { 'nvim-lua/plenary.nvim' },

	config = function()
	local builtin = require("telescope.builtin")
	vim.keymap.set("n", "<leader>pf", builtin.find_files, { })
	vim.keymap.set("n", "<C-p>", builtin.git_files, {})
    vim.keymap.set("n", "gd", builtin.lsp_definitions)
    vim.keymap.set("n", "gr", builtin.lsp_references)
    vim.keymap.set("n", "gi", builtin.lsp_implementations)
    vim.keymap.set("n", "<leader>fg", builtin.live_grep, {
        desc = "Grep (live)"
        })

	end,
}
