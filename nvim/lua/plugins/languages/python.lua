local function scandir(directory)
    local i, t, popen = 0, {}, io.popen
    local pfile = popen('ls "' .. directory .. '"')

    if pfile == nil then
        return {}
    end

    for filename in pfile:lines() do
        i = i + 1
        t[i] = filename
    end

    pfile:close()
    return t
end

return {
    { "Vimjas/vim-python-pep8-indent", ft = "python" },
    {
        "linux-cultist/venv-selector.nvim",
        dependencies = { "neovim/nvim-lspconfig", "nvim-telescope/telescope.nvim" },
        opts = {
            path = "/Users/sazary/code/python/venvs/",
            name = "GETS REPLACED IN CONFIG FUNC",
            parents = 0,
            search_workspace = false,
            search_venv_managers = false,
            auto_refresh = true,
        },
        config = function(_, opts)
            opts.name = scandir(opts.path)
            require("venv-selector").setup(opts)
        end,
        event = "VeryLazy", -- Optional: needed only if you want to type `:VenvSelect` without a keymapping
        keys = {
            { "<leader>vs", "<cmd>:VenvSelect<cr>" },
            { "<leader>vc", "<cmd>:VenvSelectCached<cr>" },
        },
    },
}
