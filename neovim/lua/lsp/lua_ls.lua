local runtime_path = vim.split(package.path, ";")
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")

return {
    -- 比如这里修改成了中文提示信息，具体语言服务器是否支持中文提示还需要查看该语言服务器的配置项
    cmd = {"lua-language-server", "--locale=en_US"},
    filetypes = {"lua"},
    log_level = 2, -- 再比如我将该服务器的工作域范围改成了当前所在目录的工作区，避免了重复运行多个同样的语言服务器的问题
    root_dir = function()
        return vim.fn.getcwd()
    end,
    settings = {
        Lua = {
            runtime = {
                version = "LuaJIT",
                path = runtime_path
            },
            diagnostics = {
                globals = {"vim"}
            },
            workspace = {
                library = vim.api.nvim_get_runtime_file("", true)
            },
            telemetry = {
                enable = false
            }
        }
    }
}
