return {
    "nvim-tree/nvim-tree.lua",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
        local nvimtree = require("nvim-tree")

        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

        nvimtree.setup({
            view = {
                width = 35,
                relativenumber = true,
            },

            renderer = {
                indent_markers = {
                    enable = true,
                },
                icons = {
                    glyphs = {
                        folder = {
                            arrow_closed = "→",
                            arrow_open = "↓",
                        },
                    },
                },
            },

            actions = {
                open_file = {
                    window_picker = {
                        enable = false,
                    },
                },
            },
            
            filters = {
                custom = {".DS_Store"},
            },

            git = {
                ignore = false,
            },
        })
    
    local api = require('nvim-tree.api')
    local function toggle_focus_on_nvim_tree()
    if api.tree.is_visible() then
        -- Se o NvimTree está aberto, foca nele
        api.tree.focus()
    else
        -- Se o NvimTree não está aberto, abre o NvimTree
        api.tree.open()
    end
    end

        local keymap = vim.keymap

        
        keymap.set("n", "<leader>et", toggle_focus_on_nvim_tree, { desc = "Toggle focus between file and explorer" })

        keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", {desc = "Togle file explorer"})
        keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", {desc = "Toggle between file and explorer"})
        keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", {desc = "collapse file explorer"})
        keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer"})
    end
}
