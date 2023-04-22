local startupFunction = function(use)
	use 'wbthomason/packer.nvim' -- package manager
	use 'andweeb/presence.nvim' -- discord rich presence
	use {

		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use({ 'rose-pine/neovim', as = 'rose-pine' })
	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use {"akinsho/toggleterm.nvim", tag = '*', config = function()
		require("toggleterm").setup()
	end}
    use 'jiangmiao/auto-pairs'
    -- lspconfig
    use 'neovim/nvim-lspconfig'
end

return require("packer").startup(startupFunction)
