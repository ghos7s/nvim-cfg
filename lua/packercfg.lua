local packer_loader = function()
	local packer_path = vim.fn.stdpath("data") .. '/site/pack/packer/start/packer.nvim'
	if vim.fn.empty(vim.fn.glob(packer_path)) > 0 then
		vim.fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', packer_path})
		-- vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end

local packer_status = packer_loader()
local packer = require('packer')

packer.startup(function(use)
	use 'wbthomason/packer.nvim'
    use 'WilliamHsieh/catppuccin.nvim'
    use 'hrsh7th/nvim-cmp.nvim'
    use 'hrsh7th/cmp-nvim-lsp.nvim'
    use 'neovim/nvim-lspconfig.nvim'
    use 'lewis6991/gitsigns.nvim'
    use 'tpope/vim-fugitive.nvim'

    if packer_status then
    	packer.sync()
    end
end)
