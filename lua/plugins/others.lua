return {
	{
		'nvim-tree/nvim-tree.lua', 
		dependencies = { 'nvim-tree/nvim-web-devicons' }, 
		config = function()
			require('nvim-tree').setup()
		end,
	},
	{
		'romgrk/barbar.nvim',
		dependencies = 'nvim-tree/nvim-web-devicons',
	},
	{
		'norcalli/nvim-colorizer.lua',
		config = function()
			require('colorizer').setup()
		end,
	},
	{ 
		'echasnovski/mini.pairs', 
		version = false,
		config = function()
			require('mini.pairs').setup()
		end,
	},
    { 
		'echasnovski/mini.comment', 
		version = false,
		config = function()
			require('mini.comment').setup()
		end,
	},
	{ 
		'echasnovski/mini.surround', 
		version = false,
		config = function()
			require('mini.surround').setup()
		end,
	},
	{
	   'echasnovski/mini.statusline',
		version = false,
		config = function()
            require('mini.statusline').setup()
		end,
	},
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate',
        config = function()
            require('nvim-treesitter.configs').setup(
                {
                    ensure_installed = { "bash", "lua", "vim", "python", "javascript", "html" },
                    highlight = { enable = true },
                    indent = { enable = true },
                }
            )
        end,
    },
}
