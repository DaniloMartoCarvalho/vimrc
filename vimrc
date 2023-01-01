" ===== VIMRC ===== "

let g:pjroot=expand('~/.vim/')

let g:vimplug_exists=expand(pjroot . 'autoload/plug.vim')

let g:plugged=expand(pjroot . 'plugged/')

if !filereadable(vimplug_exists)
    exec ':source ' . pjroot . 'scripts/vimplug_installation.vim'
endif

let settings=[
    \ 'plugins',
    \ 'general',
    \ 'appearance',
    \ 'editor',
    \ 'keymaps',
\]

for setting in settings
    exec ':source ' . pjroot . 'vim.d/' . setting . '.vim'
endfor
