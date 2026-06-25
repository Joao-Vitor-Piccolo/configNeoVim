return {
    {
        "echasnovski/mini.icons",
        version = false,
        config = function()
            require("mini.icons").setup()
        end,
    },

    {
        "echasnovski/mini.files",
        version = false,
        config = function()
            local MiniFiles = require("mini.files")

            MiniFiles.setup({
                options = {
                    use_as_default_explorer = true,
                    permanent_delete = false,
                },

                windows = {
                    preview = true,
                    width_focus = 35,
                    width_preview = 35,
                },

                mappings = {
                    close = "<Esc>",
                    go_in = "l",
                    go_in_plus = "L",
                    go_out = "h",
                    go_out_plus = "H",
                    reset = "<BS>",
                    reveal_cwd = "@",
                    show_help = "g?",
                    synchronize = "=",
                    trim_left = "<",
                    trim_right = ">",
                },
            })

            vim.keymap.set("n", "-", function()
                MiniFiles.open(vim.api.nvim_buf_get_name(0), true)
            end, {
                desc = "Open MiniFiles",
            })

            local group =
                vim.api.nvim_create_augroup("MiniFilesConfig", { clear = true })

            vim.api.nvim_create_autocmd("User", {
                group = group,
                pattern = "MiniFilesBufferCreate",
                callback = function(args)
                    local buf_id = args.data.buf_id

                    vim.keymap.set("n", "<CR>", function()
                        local fs_entry = MiniFiles.get_fs_entry()

                        if fs_entry == nil then
                            return
                        end

                        if fs_entry.fs_type == "directory" then
                            MiniFiles.go_in()
                            return
                        end

                        MiniFiles.close()
                        vim.cmd("edit " .. vim.fn.fnameescape(fs_entry.path))
                    end, {
                        buffer = buf_id,
                        nowait = true,
                        silent = true,
                    })
                end,
            })

            vim.api.nvim_create_autocmd("User", {
                group = group,
                pattern = "MiniFilesWindowOpen",
                callback = function(args)
                    local win_id = args.data.win_id

                    vim.wo[win_id].number = false
                    vim.wo[win_id].relativenumber = false
                    vim.wo[win_id].signcolumn = "no"
                    vim.wo[win_id].wrap = false
                    vim.wo[win_id].cursorline = true
                end,
            })
        end,
    },
}
