-- formatters
require("formatter").setup(
  {
    filetype = {
      javascript = {
        -- prettier
        function()
          return {
            exe = "prettier",
            args = {"--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)), "--single-quote"},
            stdin = true
          }
        end
      },
      html = {
        -- prettier
        function()
          return {
            exe = "prettier",
            args = {"--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)), "--single-quote"},
            stdin = true
          }
        end
      },
      css = {
        -- prettier
        function()
          return {
            exe = "prettier",
            args = {"--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)), "--single-quote"},
            stdin = true
          }
        end
      },
      lua = {
        -- luafmt
        function()
          return {
            exe = "luafmt",
            args = {"--indent-count", 2, "--stdin"},
            stdin = true
          }
        end
      }
    }
  }
)

-- format these files on save
vim.api.nvim_exec(
  [[
augroup FormatAutogroup
  autocmd!
  autocmd BufWritePost *.js,*.css,*.html,*.lua FormatWrite
augroup END
]],
  true
)
