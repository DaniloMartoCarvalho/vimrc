" === VIMRC === "

" Settings root directory
let g:pjroot=expand('~/.vim/')

" 'vim-plug' runtime file
let g:vimplug_exists=expand(pjroot . 'autoload/plug.vim')

" Plugins storage directory
let g:plugged=expand(pjroot . 'plugged/')

" Run the 'vim-plug' installation script if it is not already installed
if !filereadable(vimplug_exists)
    exec ':source ' . pjroot . 'scripts/vimplug_installation.vim'
endif

" List of files with settings that will be loaded
let settings=[
    \ 'plugins',
    \ 'general',
    \ 'appearance',
    \ 'editor',
    \ 'keymaps',
\]

" Load files from the settings list
for setting in settings
    exec ':source ' . pjroot . 'vim.d/' . setting . '.vim'
endfor
