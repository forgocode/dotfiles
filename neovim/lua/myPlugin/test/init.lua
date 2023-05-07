local get_lsp_client = nil
if vim.fn.has('nvim-0.8') > 0 then
    get_lsp_client = function(bufnr)
        return vim.lsp.get_active_clients({
            bufnr = bufnr or vim.api.nvim_get_current_buf()
        })
    end
else
    get_lsp_client = vim.lsp.buf_get_clients
end

get_lsp_client()

