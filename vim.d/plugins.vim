" ===== PLUGINS ===== "

call plug#begin(plugged)
    Plug 'itchyny/lightline.vim'
    Plug 'ryanoasis/vim-devicons'
    Plug 'preservim/nerdtree'
    Plug 'preservim/tagbar'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'tpope/vim-commentary'
    Plug 'raimondi/delimitmate'
    Plug 'airblade/vim-gitgutter'
    Plug 'editorconfig/editorconfig-vim'
    Plug 'dense-analysis/ale'
    Plug 'prabirshrestha/async.vim'
    Plug 'prabirshrestha/vim-lsp'
    Plug 'prabirshrestha/asyncomplete.vim'
    Plug 'prabirshrestha/asyncomplete-lsp.vim'

    " === HTML/CSS === "
    Plug 'mattn/emmet-vim'
    Plug 'gko/vim-coloresque'
    Plug 'hail2u/vim-css3-syntax'
    Plug 'groenewege/vim-less'

    " === GO === "
    Plug 'fatih/vim-go', {'do': ':GoInstallBinaries'}

    " === JAVASCRIPT === "
    Plug 'jelera/vim-javascript-syntax'

    " === RUBY === "
    Plug 'tpope/vim-endwise'

    " === RUST === "
    Plug 'racer-rust/vim-racer'
    Plug 'rust-lang/rust.vim'

call plug#end()

" === preservim/nerdtree === "
nnoremap <F3> :NERDTreeToggle<CR>

let g:NERDTreeChDirMode=2
let g:NERDTreeIgnore=['node_modules','\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__']
let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
let g:NERDTreeShowBookmarks=1
let g:nerdtree_tabs_focus_on_files=1
let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
let g:NERDTreeWinSize = 50

" === preservim/tagbar === "
nnoremap <F4> :TagbarToggle<CR>

" === junegunn/fzf === "
nnoremap <C-p> :Files<CR>

" === dense-analysis/ale === "
let g:ale_fix_on_save = 1
let g:ale_fixers = {
    \ '*': [
        \ 'remove_trailing_lines',
        \ 'trim_whitespace'
    \]
\}
