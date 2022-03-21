local status_ok, dap = pcall(require, "dap")
if not status_ok then
    return
end

local utils = require("user.dap.utils")

local M = {}

dap.adapters.go = function(callback, _)
    local stdout = vim.loop.new_pipe(false)
    local handle
    local pid_or_err
    local port = 38697
    local opts = {
        stdio = { nil, stdout },
        args = { "dap", "-l", "127.0.01:" .. port },
        detached = true,
    }
    handle, pid_or_err = vim.loop.spawn("dlv", opts, function(code)
        stdout:close()
        handle:close()
        if code ~= 0 then
            print("dlv exited with code", code)
        end
    end)
    assert(handle, "Error running dlv: " .. tostring(pid_or_err))
    stdout:read_start(function(err, chunk)
        assert(not err, err)
        if chunk then
            vim.schedule(function()
                require("dap.repl").append(chunk)
            end)
        end
    end)
    vim.defer_fn(function()
        callback({ type = "server", host = "127.0.0.1", port = port })
    end, 100)
end

dap.configurations.go = {
    {
        type = "go",
        request = "launch",
        name = "Debug package",
        program = "./${relativeFileDirname}",
    },
    {
        type = "go",
        request = "launch",
        name = "Debug tests",
        mode = "test",
        program = "./${relativeFileDirname}",
    },
}

M.test_info_go = function()
    local funcname, _, methodname = utils.get_gps_info()
    local test_pattern = funcname
    local test_name = funcname
    if methodname then
        test_pattern = ".../" .. methodname
        test_name = methodname
    end
    return test_pattern, test_name
end

M.test_dap_config_go = function(test_pattern)
    return {
        type = "go",
        request = "launch",
        name = table.concat({ "Debug", test_pattern }, " "),
        mode = "test",
        program = "./${relativeFileDirname}",
        args = { "-test.v", "-test.run", test_pattern },
    }
end

return M
