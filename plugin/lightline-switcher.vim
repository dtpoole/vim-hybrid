if exists("g:loaded_hybrid_autoload") 
  finish
endif
let g:loaded_hybrid_autoload = 1

function! s:lightline_update()
  if !exists('g:loaded_lightline')
    return
  endif
  try
    if &background == 'dark' 
      let g:lightline.colorscheme = 'hybrid'
    elseif &background == 'light'
      let g:lightline.colorscheme = 'hybrid_light'
    endif
    call lightline#init()
    call lightline#colorscheme()
    call lightline#update()
  catch
  endtry
endfunction

autocmd ColorScheme hybrid,hybrid_light call s:lightline_update()
