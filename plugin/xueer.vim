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
