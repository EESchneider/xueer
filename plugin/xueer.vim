" vim: foldmethod=marker foldmarker={{{,}}}
if !exists('g:xueer_mappings')
    let g:xueer_mappings = 1
endif

if !exists('g:xueer_environments')
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

if !exists('g:xueer_autorender')
    let g:xueer_autorender = 1
endif

if !exists('g:xueer_tex_compiler')
    let g:xueer_tex_compiler = 'xueer#Compile'
endif

if !exists('g:xueer_pdf_viewer')
    let g:xueer_pdf_viewer = 'zathura'
endif

if !exists('g:xueer_pdf_location')
    let g:xueer_pdf_location = '.'
endif
