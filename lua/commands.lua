local cmd = vim.api.nvim_create_user_command
cmd('Ww', 'w !sudo tee % > /dev/null', {bang = true})
