Dependencies (default)
======================
By default, uses [zathura](https://pwmt.org) to open compiled documents. This can be set to your document-viewer of choice by settings `let g:xueer_document_viewer = MY_FAVORITE_READER`, as long as it can be run from the command line with the same syntax as `zathura example.pdf`.

By default, uses latexmk to compile TeX documents. If you have another preferred method for compiling TeX files, just define another function to execute it, and add `let g:xueer_tex_compiler = 'MY_AWESOME_FUNCTION'`.

Configuration
=============
TODO
