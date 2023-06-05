vim.cmd([[
  augroup _comment
	autocmd!
	autocmd BufNewFile *.yaml,*.sh,*.yml,Dockerfile* exec ":call Set_info()"
    function Set_info()
	  call setline(1, '# **********************************************************')
	  call setline(2, '# * Author           : forgocode')
	  call setline(3, '# * Email            : forgocode@163.com')
	  call setline(4, '# * Github           : https://github.com/forgocode')
	  call setline(5, '# * Create Time      : '.strftime("%Y-%m-%d %H:%M"))
	  call setline(6, '# * FileName         : '.expand("%"))
	  call setline(7, '# * Description      : ')
	  call setline(8, '# **********************************************************')
	  call setline(9, '')
    endfunc
  augroup end

  augroup fmt
	autocmd!
	autocmd BufWritePre * undojoin | Neoformat
  augroup END

  augroup go
	autocmd!
	autocmd FileType go iabbrev  <buffer> Test func Test_(t testing.T) { }
	autocmd BufNewFile *_test.go exec ":call Start_Go_Test()"
    function Start_Go_Test()
  		call setline(1, 'package '.expand("%:p:h:t"))
  		call setline(2, '')
  		call setline(3, 'import(')
  		call setline(4, '	"testing"')
  		call setline(5, ')')
  		call setline(6, '')
  		call setline(7, 'func Test_ (t testing.T) { }')
  		call setline(8, '')
  	endfunc
  augroup END

]])
