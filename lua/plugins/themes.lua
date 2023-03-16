-- pywal colors
-- vim.cmd [[ source $HOME/.cache/wal/colors-wal.vim ]]
vim.cmd [[ silent exec '!$HOME/.config/nvim/base16.sh' ]]
vim.cmd [[ source $HOME/.cache/wal/base16.vim ]]

return {
	{
		'echasnovski/mini.base16',
		version = false,
		config = function()
			require('mini.base16').setup({
	               palette = require('colors.' .. theme),
	               cterm = true,
	           })
		end,
	},
    -- {
    --     'folke/tokyonight.nvim',
    --     config = function()
    --         require('tokyonight').setup({
    --             style = 'night',
    --             transparent = true,
    --             styles = {
    --                 sidebars = "transparent",
    --                 floats = "transparent",
    --                 },
    --         })
    --     end,
    -- },
}
