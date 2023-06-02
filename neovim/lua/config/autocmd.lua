vim.cmd([[
  augroup _bash
	autocmd!
	autocmd BufNewFile *.sh exec ":call Set_info()"
    function Set_info()
	  call setline(1, '#/bin/bash')
	  call setline(2, '# **********************************************************')
	  call setline(3, '# * Author           : forgocode')
	  call setline(4, '# * Email            : forgocode#163.com')
	  call setline(5, '# * Github           : https://github.com/forgocode')
	  call setline(6, '# * Create Time      : '.strftime("%Y-%m-%d %H:%M"))
	  call setline(7, '# * FileName         : '.expand("%"))
	  call setline(8, '# * Description      : ')
	  call setline(9, '# **********************************************************')
	  call setline(10, '')
    endfunc
  augroup end

  augroup fmt
	autocmd!
	autocmd BufWritePre * undojoin | Neoformat
  augroup END
]])
