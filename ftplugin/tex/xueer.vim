if g:xueer_mappings
    inoremap <expr><buffer> [[ xueer#CreateEnvironment()
    inoremap <expr><buffer> ,e xueer#CreateEnvironment('equation*')
    inoremap <expr><buffer> ,a xueer#CreateEnvironment('align*')
    inoremap <expr><buffer> ,m xueer#CreateEnvironment('bmatrix')
    inoremap <expr><buffer> ,, xueer#CreateCommand()
    inoremap <expr><buffer> ,s xueer#CreateCommand('section')
    inoremap <expr><buffer> ,S xueer#CreateCommand('subsection')
    inoremap <expr><buffer> ,b xueer#CreateCommand('textbf')
    inoremap <expr><buffer> ,i xueer#CreateCommand('textit')
    nnoremap <expr><buffer> <BS> xueer#OpenPDF()
endif

if g:xueer_autorender
    augroup xueer_tex_autorender
        autocmd!
        " This is wrapped in an `execute` so that functions in the user's
        " scope, but not this script's, can be used
        autocmd BufWritePost *.tex execute 'call {g:xueer_tex_compiler}()'
    augroup END
endif
