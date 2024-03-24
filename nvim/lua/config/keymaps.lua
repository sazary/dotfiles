-- quit
vim.keymap.set("n", "<leader>qq", "<cmd>q<cr>", { desc = "Quit" })

-- common typos
vim.keymap.set("ca", "W", "w", { desc = "Write" })
vim.keymap.set("ca", "Wa", "wa", { desc = "Write all" })
vim.keymap.set("ca", "Wqa", "wqa", { desc = "Write & quit all" })
vim.keymap.set("ca", "Qa", "qa", { desc = "Quit all" })

-- buffers
vim.keymap.set("n", "<leader>1", "<cmd>BufferLineGoToBuffer 1<cr>", { desc = "Go to the 1st buffer" })
vim.keymap.set("n", "<leader>2", "<cmd>BufferLineGoToBuffer 2<cr>", { desc = "Go to the 2nd buffer" })
vim.keymap.set("n", "<leader>3", "<cmd>BufferLineGoToBuffer 3<cr>", { desc = "Go to the 3rd buffer" })
vim.keymap.set("n", "<leader>4", "<cmd>BufferLineGoToBuffer 4<cr>", { desc = "Go to the 4th buffer" })
vim.keymap.set("n", "<leader>5", "<cmd>BufferLineGoToBuffer 5<cr>", { desc = "Go to the 5th buffer" })
vim.keymap.set("n", "<leader>6", "<cmd>BufferLineGoToBuffer 6<cr>", { desc = "Go to the 6th buffer" })
vim.keymap.set("n", "<leader>7", "<cmd>BufferLineGoToBuffer 7<cr>", { desc = "Go to the 7th buffer" })
vim.keymap.set("n", "<leader>8", "<cmd>BufferLineGoToBuffer 8<cr>", { desc = "Go to the 8th buffer" })
vim.keymap.set("n", "<leader>9", "<cmd>BufferLineGoToBuffer 9<cr>", { desc = "Go to the 9th buffer" })
vim.keymap.set("n", "<leader>$", "<cmd>BufferLineGoToBuffer -1<cr>", { desc = "Go to the last buffer" })
