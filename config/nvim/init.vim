call plug#begin()

" https://github.com/catppuccin/nvim
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }

" https://github.com/nvim-treesitter/nvim-treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" https://github.com/nvim-tree/nvim-tree.lua
Plug 'nvim-tree/nvim-web-devicons' " icons
Plug 'nvim-tree/nvim-tree.lua'

" https://github.com/feline-nvim/feline.nvim
Plug 'feline-nvim/feline.nvim'

" https://github.com/lewis6991/gitsigns.nvim
Plug 'lewis6991/gitsigns.nvim'

" https://github.com/samodostal/image.nvim
Plug 'samodostal/image.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'm00qek/baleia.nvim', { 'tag': 'v1.2.0' } " color support

call plug#end()

" Load setup
source $HOME/.config/nvim/setup.vim
