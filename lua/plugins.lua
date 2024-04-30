return require('packer').startup(
function(used)
	use 'wbthomason/packer.nvim'
	use 'ellisonleao/gruvbox.nvim'
	use 'nvim-lua/plenary.nvim'
	use 'nvim-telescope/telescope.nvim'
	use 'nvim-treesitter/nvim-treesitter'
	use {'neoclide/coc.nvim', branch = 'master', run = 'npm ci'}
	use 'dense-analysis/ale'
end)
