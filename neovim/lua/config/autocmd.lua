
vim.cmd[[
  augroup _bash
	autocmd!
	autocmd BufNewFile *.sh exec ":call Set_info()"
  function Set_info()
	call setline(1, '#/bin/bash')
	call setline(2, '# Author')
  endfunc

  augroup end
]]



