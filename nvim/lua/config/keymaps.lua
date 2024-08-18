vim.keymap.set("n", "<leader>mn", function() require('todo-comments').jump_next() end, { noremap = true, silent = true })
vim.keymap.set( "n", "<leader>mp", function() require('todo-comments').jump_prev() end, { noremap = true, silent = true } )
vim.keymap.set( "n", "<leader>ml", function() vim.cmd('TodoQuickFix') end, { noremap = true, silent = true } )
vim.keymap.set( "n", "<leader>mf", function() vim.cmd('TodoTelescope') end, { noremap = true, silent = true } )
