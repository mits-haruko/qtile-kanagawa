" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

"" Vim Script
"colorscheme catppuccin
"
call plug#begin('~/.config/nvim/autoload/plugged')

   " kanagawa colorscheme
   Plug 'rebelot/kanagawa.nvim'

    "Vimtex
     Plug 'lervag/vimtex'
       let g:vimtex_view_method = 'zathura'
       "let g:vimtex_view_general_viewer = 'evince'
      
    "TeX Snips
     Plug 'SirVer/ultisnips'
	    let g:UltiSnipsExpandTrigger = '<tab>'
	    let g:UltiSnipsJumpForwardTrigger = '<tab>'
	    let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
	    let g:UltiSnipsSnippetDirectories=["UltiSnips", "tex.snippets"]
   
    "Better Syntax Support
     Plug 'sheerun/vim-polyglot'
    

    "Auto pairs for '(' '[' '{'
     Plug 'jiangmiao/auto-pairs'
    
    " Ranger plugin
     Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
      let g:rnvirm_ex_enable = 1 
      nmap <C-r>  :RnvimrToggle<CR>

    " Lightline
     "Plug 'itchyny/lightline.vim'
     " set noshowmode
     "let g:lightline = {
     "        \ 'colorscheme': 'kanagawa',
     "        \}
     "

     " Lualine
     Plug 'nvim-lualine/lualine.nvim'
    
     " Treesitter 
     Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
      
     " hexokinase (colorizer)
     Plug 'rrethy/vim-hexokinase', {'do': 'make hexokinase'}
     let g:Hexokinase_highlighters = ['backgroundfull']
     
     " FZF and vim-rooter
     Plug 'junegunn/fzf', {'do': {-> fzf#install()}}

     Plug 'junegunn/fzf.vim'

     Plug 'airblade/vim-rooter'
     
     " Startify
     Plug 'mhinz/vim-startify'

     " Coc
     Plug 'neoclide/coc.nvim', {'branch': 'release'}
     
     " vim-kitty syntax
     Plug 'fladson/vim-kitty'
     
     " floaterm
     Plug 'voldikss/vim-floaterm'     
     let g:floaterm_keymap_new = '<Leader>ft'
     let g:floaterm_keymap_toggle = '<Leader>t'
   
     " vim pencil 
     Plug 'preservim/vim-pencil' 


call plug#end()

colorscheme kanagawa
  

lua << END
     require('lualine').setup{
     options = {
    icons_enabled = true,
    theme = 'kanagawa',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {},
    always_divide_middle = true,
    globalstatus = false,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {}
  }
END


let mapleader = "\<space>"


"  BLines remap
nnoremap <C-f> :Files<CR>
nnoremap< <C-g> :Rg<CR>
nnoremap <C-b> :BLines<CR>

" Startify shortcut
nmap <C-n> :Startify<CR>

" Tab remap
nnoremap <tab> :tabNext<CR>

" Numbering
set number
