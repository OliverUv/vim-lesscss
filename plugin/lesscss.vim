" File: lesscss.vim
" Author: Vital Kudzelka
" Description: Vim plugin that make it easy to edit less files without need to manually update corresponding css file.
" Last Modified: Nov 01, 2012

if exists("g:loaded_lesscss") || &cp
  finish
endif
let g:loaded_lesscss = 1

" less to css executable(full path or executable)
call lesscss#default('g:lesscss_cmd', 'lessc')
" where to save to
call lesscss#default('g:lesscss_save_to', '')

let s:lesscss_out = '%:p:h/' . g:lesscss_save_to . '%:t:r.css'

call lesscss#default('g:lesscss_makeprg', g:lesscss_cmd.'\ %\ >\ '.s:lesscss_out)