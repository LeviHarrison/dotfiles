set termguicolors

call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

Plug 'leafgarland/typescript-vim'
Plug 'pangloss/vim-javascript'
Plug 'chemzqm/vim-jsx-improve'

Plug 'ntk148v/vim-horizon'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'itchyny/lightline.vim'

call plug#end()

silent! colorscheme horizon
set number
set tabstop=2
set shiftwidth=2

let g:coc_global_extensions=[
	      \'coc-actions',
	      \'coc-angular',
	      \'coc-css',
	      \'coc-cssmodules',
        \'coc-docker',
	      \'coc-go',
	      \'coc-highlight',
        \'coc-html',
	      \'coc-json',
	      \'coc-marketplace',
	      \'coc-prettier',
        \'coc-python',
				\'coc-rust-analyzer',
				\'coc-sh',
	      \'coc-snippets',
	      \'coc-sql',
	      \'coc-tabnine',
	      \'coc-tailwindcss',
        \'coc-tsserver',
				\'coc-yaml',
	\]

if has("patch-8.1.1564")
	" Recently vim can merge signcolumn and number column into one
	set signcolumn=number
else
	set signcolumn=yes
endif

let g:lightline = {'colorscheme' : 'horizon'}

let g:go_code_completion_enabled = 0
let g:go_fmt_command = "goimports"
let g:go_gpls_enabled = 1
let g:go_doc_keywordprg_enabled = 1
let g:go_highlight_array_whitespace_error = 0
let g:go_highlight_chan_whitespace_error = 0
let g:go_highlight_extra_types = 1
let g:go_highlight_space_tab_error = 0
let g:go_highlight_trailing_whitespace_error = 0
let g:go_highlight_operators = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_variable_declarations = 1
let g:go_highlight_variable_assignments = 1

let g:javascript_plugin_jsdoc = 1

tnoremap <Esc> <C-\><C-n>
