return {
  "mg979/vim-visual-multi",
  branch = "master",
  event = "User AstroFile", -- Load plugin saat membuka file
  init = function()
    -- Mengubah mapping default jika diperlukan
    vim.g.VM_maps = {
      ["Find Under"] = "<C-d>", -- Ctrl + d mirip VS Code (pilih kata berikutnya)
      ["Find Subword Under"] = "<C-d>",
    }
  end,
}
