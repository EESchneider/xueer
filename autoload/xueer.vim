function! xueer#SearchEnvironments(start, _, __)
    let l:result = []
    for env in g:tex_environments
        if env[:len(a:start) - 1] ==# a:start
            call add(l:result, env)
        endif
    endfor
    return l:result
endfunction

" Takes 0 or 1 arguments
" CreateEnviroment() prompts the user for a name of an environment, and then
" places them inside it
" CreateEnvironment(str) uses its argument as the name of its environment,
" rather than prompting the user
function! xueer#CreateEnvironment(...)
    call inputsave()
    if a:0 == 0
        let l:env = input("Environment:\n> ", "", "customlist,xueer#SearchEnvironments")
        if l:env ==# "" " the action was cancelled
            call inputrestore()
            return ""
        endif
    else
        let l:env = a:1
    endif

    call inputrestore()
    return "\\begin{" . l:env . "}\<CR>\<CR>\\end{" . l:env . "}\<Up>\<Esc>\"_cc"
endfunction

" Takes 0 or 1 arguments.
" CreateCommand() prompts the user for the name of a command, and then places
" them in its first argument
" CreateCommand(str) uses its argument as the name of the command, rather than
" prompting the user
function! xueer#CreateCommand(...)
    call inputsave()
    if a:0 == 0
        let l:cmd = input("Command:\n> ")
        if l:cmd ==# "" " the action was cancelled
            call inputrestore()
            return ""
        endif
    else
        let l:cmd = a:1
    endif

    call inputrestore()
    return "\\" . l:cmd . "{}\<Left>"
endfunction

function! xueer#OpenPDF()
    let l:document = expand('%:h') . '/' . g:xueer_pdf_location . '/' . expand('%:t:r') . '.pdf'
    silent execute '!' . g:xueer_pdf_viewer . ' ' . l:document . ' &'
endfunction

function xueer#Compile()
    let l:directory = expand('%:h')
    let l:outdir = l:directory . '/' . g:xueer_pdf_location
    let l:root_glob = shellescape(expand('%:r')) . '*'
    silent execute "!latexmk -cd -outdir='" . l:outdir . "' -pdf '%'; "
                \ . "cd '" . outdir . "'; latexmk -c " . l:root_glob
    redraw!
endfunction
