local function map(mode, lhs, rhs, opts)
    local options = {noremap = true}
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- keybind list
map("", "<leader>c", '"+y')

-- open terminals  
map("n", "<C-b>" , [[<Cmd> vnew term://bash<CR>]] , opt) -- split term vertically , over the right  
map("n", "<C-x>" , [[<Cmd> split term://bash | resize 10 <CR>]] , opt) -- split term vertically , over the right  

map("n", "<F10>" , [[<Cmd> echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>]] , opt) 

map("n", "<leader>fs", "<Cmd> w<CR>")
map("n", "<leader><leader>", "<Cmd> :noh<CR>")

map("n", "<leader>ft", "<Cmd> :NvimTreeFindFile<CR>")

map("n", "<leader>bd", "<Cmd> :bd<CR>")
map("n", "<leader>bo", "<Cmd> BufOnly<CR>")
map("n", "<leader>bn", "<Cmd> bnext!<CR>")
map("n", "<leader>bp", "<Cmd> bprevious!<CR>")
map("n", "<leader>bD", "<Cmd> :bd!<CR>")
map("n", "<leader>bN", "<Cmd> :new<CR>")

