
lua<<EOF

EOF

"this one is for the icons
set encoding=UTF-8

set path+=**

" Nice menu when typing `:find *.py`
"set wildmode=longest,list,full
set wildmenu
" Ignore files
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=**/coverage/*
set wildignore+=**/node_modules/*
set wildignore+=**/android/*
set wildignore+=**/ios/*
set wildignore+=**/.git/*
set guicursor=
set nohlsearch
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=4
" set noshowmode
set signcolumn=yes
set isfname+=@-@
" set ls=0
"this one is for spellings
setlocal spell spelllang=en_us


" Give more space for displaying messages.
set cmdheight=1

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=50

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

set colorcolumn=80
set completeopt=menu,menuone,noselect

set completeopt=menu,menuone,noselect " better autocomplete options
set mouse=a " if I accidentally use the mouse
set splitright " splits to the right
set splitbelow " splits below
set expandtab " space characters instead of tab
set tabstop=4 " tab equals 2 spaces
set shiftwidth=4 " indentation
set number " show absolute line numbers
set ignorecase " search case insensitive
set smartcase " search via smartcase
set incsearch " search incremental
set diffopt+=vertical " starts diff mode in vertical split
set hidden " allow hidden buffers
set nobackup " don't create backup files
set nowritebackup " don't create backup files
set cmdheight=1 " only one line for commands
set shortmess+=c " don't need to press enter so often
set signcolumn=yes " add a column for sings (e.g. LSP, ...)
set updatetime=520 " time until update
set undofile " persists undo tree
set cursorcolumn
set cursorline
filetype plugin indent on " enable detection, plugins and indents
let mapleader = " " " space as leader key
if (has("termguicolors"))
  set termguicolors " better colors, but makes it sery slow!
endif
let g:netrw_banner=0 " disable banner in netrw
let g:netrw_liststyle=3 " tree view in netrw
let g:markdown_fenced_languages = ['javascript', 'js=javascript', 'json=javascript'] " syntax highlighting in markdown


call plug#begin('~/.vim/plugged')
Plug 'sbdchd/neoformat'

Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'
" Also add Glaive, which is used to configure codefmt's maktaba flags. See
" `:help :Glaive` for usage.
Plug 'google/vim-glaive'
  Plug 'szw/vim-maximizer'
  Plug 'kassio/neoterm'
  Plug 'tpope/vim-commentary'
  Plug 'sbdchd/neoformat'
  Plug 'glepnir/lspsaga.nvim'
  Plug 'tpope/vim-fugitive'
  Plug 'neovim/nvim-lsp'
  Plug 'neovim/nvim-lspconfig'
  Plug 'hrsh7th/nvim-compe'
  Plug 'neovim/nvim-lspconfig'
  Plug 'hrsh7th/nvim-compe'
  " Plug 'janko/vim-test'
  " Plug 'puremourning/vimspector'
  Plug 'vimwiki/vimwiki'
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'heavenshell/vim-jsdoc', {
  \ 'for': ['javascript', 'javascript.jsx','typescript'],
  \ 'do': 'make install'
  \}
  Plug 'alaviss/nim.nvim'
  Plug 'lewis6991/gitsigns.nvim'
  " Plug 'folke/tokyonight.nvim'
  Plug 'mfussenegger/nvim-dap'
  " Plug 'rcarriga/nvim-dap-ui'
  Plug 'nvim-telescope/telescope-dap.nvim'
  Plug 'theHamsta/nvim-dap-virtual-text'
  Plug 'Mofiqul/vscode.nvim'
  Plug 'hoob3rt/lualine.nvim'
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'ryanoasis/vim-devicons'
  Plug 'TimUntersberger/neogit'
  Plug 'sindrets/diffview.nvim'
  Plug 'projekt0n/github-nvim-theme'
  Plug 'David-Kunz/jester'
  Plug 'vhyrro/neorg'
  Plug 'folke/zen-mode.nvim'
  Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  
Plug 'neovim/nvim-lspconfig'
Plug 'jose-elias-alvarez/null-ls.nvim'
Plug 'jose-elias-alvarez/nvim-lsp-ts-utils'

Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'

Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/nvim-cmp'
Plug 'onsails/lspkind-nvim'
Plug 'L3MON4D3/LuaSnip'
Plug 'rafamadriz/friendly-snippets'

Plug 'junegunn/gv.vim'
"these are for more fetures of lsp
" note to my self that this plugin is not the one which is blocking you form
" coediting
Plug 'prabirshrestha/vim-lsp'

Plug 'mattn/vim-lsp-settings'
Plug 'Shougo/deoplete.nvim'
Plug 'lighttiger2505/deoplete-vim-lsp'

Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Use release branch (recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Or build from source code by using yarn: https://yarnpkg.com
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
Plug 'hoob3rt/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Or build from source code by using yarn: https://yarnpkg.com
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}

"these are for nvim lsp by theat 7guy
" Plug 'hrsh7th/vim-vsnip'
" Plug 'hrsh7th/vim-vsnip-integ'
" Plug 'hrsh7th/vim-lamp'
" Plug 'hrsh7th/vim-compete'
" Plug 'hrsh7th/vim-compete-lamp'
" Plug 'prabirshrestha/async.vim'
" Plug 'nvim-lua/completion-nvim'
" Plug 'prabirshrestha/async.vim'
Plug 'mattn/vim-lsp-settings'
Plug 'thomasfaingnaert/vim-lsp-snippets'
Plug 'junegunn/vim-emoji'
Plug 'https://github.com/ryanoasis/vim-devicons'
Plug 'https://github.com/adelarsq/vim-devicons-emoji'
  Plug 'preservim/nerdtree'
   Plug 'nvim-treesitter/highlight.lua'
   " Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins' }
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'nvim-treesitter/playground'


Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
"this is for top stats bar
" Plug 'kyazdani42/nvim-web-devicons'
" Plug 'romgrk/barbar.nvim'
Plug 'nvim-lualine/lualine.nvim'
" If you want to have icons in your statusline choose one of these
Plug 'kyazdani42/nvim-web-devicons'

"this one is for icons
Plug 'ryanoasis/vim-devicons'

"for tabnine
Plug 'tzachar/cmp-tabnine', { 'do': './install.sh' }
Plug 'tzachar/compe-tabnine', { 'do': './install.sh' }

call plug#end()


colorscheme tokyonight

lua require'lspconfig'.tsserver.setup{}
lua <<EOF
require("lspconfig").tsserver.setup(config())

require("lspconfig").clangd.setup(config({
cmd = { "clangd", "--background-index", "--clang-tidy" },
root_dir = function()
return vim.loop.cwd()
end,
}))

require("lspconfig").jedi_language_server.setup(config())

require("lspconfig").svelte.setup(config())

require("lspconfig").solang.setup(config())

require("lspconfig").vls.setup(config())

require("lspconfig").cssls.setup(config())

require("lspconfig").gopls.setup(config({
cmd = { "gopls", "serve" },
settings = {
gopls = {
analyses = {
unusedparams = true,
},
staticcheck = true,
},
},
}))
EOF


set completeopt=menu,menuone,noselect
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']

fun! LspLocationList()
    " lua vim.lsp.diagnostic.set_loclist({open_loclist = false})
endfun

nnoremap <leader>vd :lua vim.lsp.buf.definition()<CR>
nnoremap <leader>vi :lua vim.lsp.buf.implementation()<CR>
nnoremap <leader>vsh :lua vim.lsp.buf.signature_help()<CR>
nnoremap <leader>vrr :lua vim.lsp.buf.references()<CR>
nnoremap <leader>vrn :lua vim.lsp.buf.rename()<CR>
nnoremap <leader>vh :lua vim.lsp.buf.hover()<CR>
nnoremap <leader>vca :lua vim.lsp.buf.code_action()<CR>
nnoremap <leader>vsd :lua vim.lsp.diagnostic.show_line_diagnostics(); vim.lsp.util.show_line_diagnostics()<CR>
nnoremap <leader>vn :lua vim.lsp.diagnostic.goto_next()<CR>
nnoremap <leader>vll :call LspLocationList()<CR>

augroup THE_PRIMEAGEN_LSP
    autocmd!
    autocmd! BufWrite,BufEnter,InsertLeave * :call LspLocationList()
augroup END

let mapleader = " "

let g:compe = {}
let g:compe.enabled = v:true
let g:compe.autocomplete = v:true
let g:compe.debug = v:false
let g:compe.min_length = 1
let g:compe.preselect = 'enable'
let g:compe.throttle_time = 80
let g:compe.source_timeout = 200
let g:compe.incomplete_delay = 400
let g:compe.max_abbr_width = 100
let g:compe.max_kind_width = 100
let g:compe.max_menu_width = 100
let g:compe.documentation = v:true

let g:compe.source = {}
let g:compe.source.path = v:true
let g:compe.source.buffer = v:true
let g:compe.source.calc = v:true
let g:compe.source.nvim_lsp = v:true
let g:compe.source.nvim_lua = v:true
let g:compe.source.vsnip = v:true
let g:compe.source.ultisnips = v:true
let g:compe.source.luasnip = v:true

let g:LanguageClient_serverCommands = {
    \ 'vue': ['vls']
    \ }

" lua<<EOF
" does not work
" vim.lsp.vuels.setup{
"   on_attach = function(client)
"     client.resolved_capabilities.document_formatting = true
"   end;
" }
" EOF

nnoremap " :Vexplore<CR>
nnoremap f :Files<CR>
nnoremap F :Telescope find_files<CR>
nnoremap <leader>v :vsplit<CR>

lua <<EOF
local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.zimbu = {
  install_info = {
    url = "~/projects/tree-sitter-zimbu", -- local path or git repo
    files = {"src/parser.c"}
  },
  filetype = "zu", -- if filetype does not agrees with parser name
  used_by = {"bar", "baz"} -- additional filetypes that use this parser
}
EOF

nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> <C-n> <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent> <C-p> <cmd>lua vim.lsp.diagnostic.goto_next()<CR>
nnoremap cM :LspDocumentFormat<CR>
nnoremap cm :FormatCode<CR>

nnoremap m :MaximizerToggle<CR>

nnoremap q :NERDTreeToggle<CR>
"telescope file buffer

nnoremap <leader>fb :Telescope buffers<CR>
nnoremap t :Telescope<CR>

"this is by thePrimeagen
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']
let g:compe = {}
let g:compe.enabled = v:true
let g:compe.autocomplete = v:true
let g:compe.debug = v:false
let g:compe.min_length = 1
let g:compe.preselect = 'enable'
let g:compe.throttle_time = 80
let g:compe.source_timeout = 200
let g:compe.incomplete_delay = 400
let g:compe.max_abbr_width = 100
let g:compe.max_kind_width = 100
let g:compe.max_menu_width = 100
let g:compe.documentation = v:true

let g:compe.source = {}
let g:compe.source.path = v:true
let g:compe.source.buffer = v:true
let g:compe.source.calc = v:true
let g:compe.source.nvim_lsp = v:true
let g:compe.source.nvim_lua = v:true
let g:compe.source.vsnip = v:true
let g:compe.source.ultisnips = v:true
let g:compe.source.luasnip = v:true
augroup THE_PRIMEAGEN_LSP
    autocmd!
    autocmd! BufWrite,BufEnter,InsertLeave * :call LspLocationList()
  augroup END
lua <<EOF
vim.lsp.set_log_level("debug")

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

-- Setup nvim-cmp.
local cmp = require("cmp")
local source_mapping = {
	buffer = "[Buffer]",
	nvim_lsp = "[LSP]",
	nvim_lua = "[Lua]",
	path = "[Path]",
}
local lspkind = require("lspkind")
require('lspkind').init({
    with_text = true,
})

cmp.setup({
	snippet = {
		expand = function(args)
			-- For `vsnip` user.
			-- vim.fn["vsnip#anonymous"](args.body)

			-- For `luasnip` user.
			require("luasnip").lsp_expand(args.body)

			-- For `ultisnips` user.
			-- vim.fn["UltiSnips#Anon"](args.body)
		end,
	},
	mapping = {
		["<C-u>"] = cmp.mapping.scroll_docs(-4),
		["<C-d>"] = cmp.mapping.scroll_docs(4),
		["<C-Space>"] = cmp.mapping.complete(),
		["<C-e>"] = cmp.mapping.close(),
	},

    formatting = {
        format = function(entry, vim_item)
            vim_item.kind = lspkind.presets.default[vim_item.kind]
            local menu = source_mapping[entry.source.name]
            vim_item.menu = menu
            return vim_item
        end
    },

	sources = {
        -- tabnine completion? yayaya
        --{ name = "cmp_tabnine" },

		{ name = "nvim_lsp" },

		-- For vsnip user.
		-- { name = 'vsnip' },

		-- For luasnip user.
		{ name = "luasnip" },

		-- For ultisnips user.
		-- { name = 'ultisnips' },

		{ name = "buffer" },
	},
})


local function config(_config)
	return vim.tbl_deep_extend("force", {
		capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities()),
	}, _config or {})
end


--[[  I cannot seem to get this woring on new computer..
require("lspconfig").clangd.setup(config({
	cmd = { "clangd", "--background-index", "--log=verbose" },
    root_dir = function()
        print("clangd-Rootdir", vim.loop.cwd())
		return vim.loop.cwd()
	end,
}))
--]]
require("lspconfig").ccls.setup(config())

require("lspconfig").jedi_language_server.setup(config())

require("lspconfig").svelte.setup(config())

require("lspconfig").solang.setup(config())

require("lspconfig").cssls.setup(config())

require("lspconfig").gopls.setup(config({
	cmd = { "gopls", "serve" },
	settings = {
		gopls = {
			analyses = {
				unusedparams = true,
			},
			staticcheck = true,
		},
	},
}))

-- who even uses this?
require("lspconfig").rust_analyzer.setup(config({}))


local opts = {
	-- whether to highlight the currently hovered symbol
	-- disable if your cpu usage is higher than you want it
	-- or you just hate the highlight
	-- default: true
	highlight_hovered_item = true,

	-- whether to show outline guides
	-- default: true
	show_guides = true,
}

-- require("symbols-outline").setup(opts)

local snippets_paths = function()
	local plugins = { "friendly-snippets" }
	local paths = {}
	local path
	local root_path = vim.env.HOME .. "/.vim/plugged/"
	for _, plug in ipairs(plugins) do
		path = root_path .. plug
		if vim.fn.isdirectory(path) ~= 0 then
			table.insert(paths, path)
		end
	end
	return paths
end

require('luasnip.loaders.from_vscode').lazy_load({
	paths = snippets_paths(),
	include = nil, -- Load all languages
	exclude = {},
})
EOF



" class VueLanguageClient extends AutoLanguageClient {
"   startServerProcess () {
"     return cp.spawn('node', [require.resolve('vls/dist/htmlServerMain')])
"   }
" }
"
"
"
" lua<<EOF
"     lsp.vuels.setup {
"         on_attach = function(client)
"             --[[
"                 Internal Vetur formatting is not supported out of the box

"                 This line below is required if you:
"                     - want to format using Nvim's native `vim.lsp.buf.formatting**()`
"                     - want to use Vetur's formatting config instead, e.g, settings.vetur.format {...}
"             --]]
"             client.resolved_capabilities.document_formatting = true
"             on_attach(client)
"         end,
"         capabilities = capabilities,
"         settings = {
"             vetur = {
"                 completion = {
"                     autoImport = true,
"                     useScaffoldSnippets = true
"                 },
"                 format = {
"                     defaultFormatter = {
"                         html = 'none',
"                         js = 'prettier',
"                         ts = 'prettier',
"                     }
"                 },
"                 validation = {
"                     template = true,
"                     script = true,
"                     style = true,
"                     templateProps = true,
"                     interpolation = true
"                 },
"                 experimental = {
"                     templateInterpolationService = true
"                 }
"             }
"         },
"         root_dir = util.root_pattern('header.php', 'package.json', 'style.css', 'webpack.config.js')
"     }
" EOF
