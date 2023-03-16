return {
	--    {
	-- 	'echasnovski/mini.base16',
	-- 	version = false,
	-- 	config = function()
	-- 		require('mini.base16').setup({
	--                palette = require('colors.' .. theme),
	--                cterm = true,
	--            })
	-- 	end,
	-- },
    {
        'folke/tokyonight.nvim',
        config = function()
            require('tokyonight').setup({
                style = 'night',
                transparent = true,
                styles = {
                    sidebars = "transparent",
                    floats = "transparent",
                    },
            })
        end,
    },
}
