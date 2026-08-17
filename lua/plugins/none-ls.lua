-- Customize None-ls sources

---@type LazySpec
return {
  "nvimtools/none-ls.nvim",
  opts = function(_, opts)
    -- 1. Hapus tanda komentar di baris ini:
    local null_ls = require "null-ls"

    -- 2. Masukkan formatter/linter yang ingin diaktifkan:
    opts.sources = require("astrocore").list_insert_unique(opts.sources, {
      null_ls.builtins.formatting.stylua,
      null_ls.builtins.formatting.prettier,
      -- null_ls.builtins.diagnostics.eslint_d, -- contoh jika mau tambah linter
    })
  end,
}
