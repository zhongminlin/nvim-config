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
        'echasnovski/mini.sessions',
        version = false,
        config = function()
            require('mini.sessions').setup({
                file = '',
            })
        end,
    },
}
