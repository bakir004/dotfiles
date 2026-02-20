function RunFile(filePath, size)
    local fileName = vim.fn.fnamemodify(filePath, ":t:r")
    local fileNameWithExtension = vim.fn.fnamemodify(filePath, ":t")
    local extension = fileNameWithExtension:match("^.+(%..+)$")
    local command

    if extension:match("%.c$") then
        command = string.format('g++ %s.c -o %s && ./%s', fileName, fileName, fileName)
    elseif extension:match("%.cpp$") then
        command = string.format('g++ %s.cpp -fsanitize=address -o %s && ./%s', fileName, fileName, fileName)
    elseif extension:match("%.js$") then
        command = string.format('node %s.js', fileName)
    elseif extension:match("%.ts$") then
        command = string.format('npx ts-node %s.ts', fileName)
    elseif extension:match("%.pl$") then
        command = string.format('swipl -s %s --quiet -g "halt."', fileNameWithExtension)
    elseif extension:match("%.cs$") then
        command = string.format('dotnet run')
    elseif extension:match("%.rs$") then
        command = string.format('rustc %s.rs && ./%s', fileName, fileName, fileName)
    else
        print("Unsupported file type")
        return
    end

    local current_file = vim.fn.expand('%:p') -- Get the full path of the current file
    local root_path = vim.fn.getcwd() -- Get the root path where Neovim is opened
    local relative_path = current_file:gsub(root_path .. '/', '')
    local path_without_file = relative_path:match('(.*[/\\])')
    vim.cmd(string.format(":belowright split | resize %d | term", size))
    vim.cmd("startinsert")
    if path_without_file then
        vim.fn.execute('cd ' .. path_without_file)
    end
    vim.cmd("term " .. command)
end

vim.keymap.set("n", "<leader>l", [[:lua RunFile(vim.fn.expand('%:p'), 15)<CR>]], {noremap = true, silent = true})
vim.keymap.set("n", "<leader>L", [[:lua RunFile(vim.fn.expand('%:p'), 30)<CR>]], {noremap = true, silent = true})

