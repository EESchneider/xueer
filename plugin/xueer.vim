" vim: foldmethod=marker foldmarker={{{,}}}
if !has('g:xueer_mappings')
    let g:xueer_mappings = 1
endif

if !has('g:xueer_environments')
    " let g:tex_environments (Long list) {{{
    let g:tex_environments =
                \ [ "Bmatrix"
                \ , "Thm"
                \ , "abstract"
                \ , "align"
                \ , "align*"
                \ , "alignat"
                \ , "array"
                \ , "bmatrix"
                \ , "boxed"
                \ , "cases"
                \ , "center"
                \ , "description"
                \ , "displaymath"
                \ , "document"
                \ , "enumerate"
                \ , "eqnarray"
                \ , "equation"
                \ , "equation*"
                \ , "figure"
                \ , "flushleft"
                \ , "flushright"
                \ , "gather"
                \ , "itemize"
                \ , "list"
                \ , "matrix"
                \ , "minipage"
                \ , "multiline"
                \ , "picture"
                \ , "proof"
                \ , "quotation"
                \ , "quote"
                \ , "split"
                \ , "subequations"
                \ , "tabbing"
                \ , "table"
                \ , "tabular"
                \ , "tabular*"
                \ , "thebibliography"
                \ , "theorem"
                \ , "titlepage"
                \ , "verbatim"
                \ , "verbatim*"
                \ , "verse"
                \ , "vmatrix"
                \ ]
    " }}}
endif

if !has('g:xueer_autorender')
    let g:xueer_autorender = 1
endif

if !has('g:xueer_tex_compiler')
    let g:xueer_tex_compiler = 'xueer#Compile'
endif

if !has('g:xueer_pdf_viewer')
    let g:xueer_pdf_viewer = 'zathura'
endif

if !has('g:xueer_pdf_location')
    let g:xueer_pdf_location = '.'
endif

if g:xueer_mappings
    augroup xueer_tex_imaps
        autocmd!
        autocmd FileType tex inoremap <expr><buffer> [[ xueer#CreateEnvironment()
        autocmd FileType tex inoremap <expr><buffer> ,e xueer#CreateEnvironment('equation*')
        autocmd FileType tex inoremap <expr><buffer> ,a xueer#CreateEnvironment('align*')
        autocmd FileType tex inoremap <expr><buffer> ,, xueer#CreateCommand()
        autocmd FileType tex inoremap <expr><buffer> ,s xueer#CreateCommand('section')
        autocmd FileType tex inoremap <expr><buffer> ,S xueer#CreateCommand('subsection')
        autocmd FileType tex inoremap <expr><buffer> ,b xueer#CreateCommand('textbf')
        autocmd FileType tex inoremap <expr><buffer> ,i xueer#CreateCommand('textit')
        autocmd FileType tex nnoremap <expr><buffer> <BS> xueer#OpenPDF()
    augroup END
endif

if g:xueer_autorender
    augroup xueer_tex_autorender
        autocmd!
        autocmd BufWritePost *.tex call {g:xueer_tex_compiler}()
    augroup END
endif
