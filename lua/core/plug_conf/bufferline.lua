require("bufferline").setup({
    options = {
        separator_style = 'slant',
        diagnostics     = "nvim_lsp",
        offsets = {
            {
                filetype   = "NvimTree",
                text       = "Super Explorer",
                text_align = "center",
                separator  = true,
            }
        },
    }
})
