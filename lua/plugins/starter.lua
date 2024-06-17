local header_art = 
[[
	 ██████   █████                   █████   █████  ███                  
	░░██████ ░░███                   ░░███   ░░███  ░░░                 
	 ░███░███ ░███   ██████   ██████  ░███    ░███  ████  █████████████   
	 ░███░░███░███  ███░░███ ███░░███ ░███    ░███ ░░███ ░░███░░███░░███  
	 ░███ ░░██████ ░███████ ░███ ░███ ░░███   ███   ░███  ░███ ░███ ░███ 
	 ░███  ░░█████ ░███░░░  ░███ ░███  ░░░█████░    ░███  ░███ ░███ ░███ 
	 █████  ░░█████░░██████ ░░██████     ░░███      █████ █████░███ █████
	░░░░░    ░░░░░  ░░░░░░   ░░░░░░       ░░░      ░░░░░ ░░░░░ ░░░ ░░░░░


				      Ω Pain we endure, faulty weaponry we do not Ω
]]

local starter = require('mini.starter')

starter.setup({
	-- evaluate_single = true,
  content_hooks = {
    function(content)
      local blank_content_line = { { type = 'empty', string = '' } }
      local section_coords = starter.content_coords(content, 'section')
      -- Insert backwards to not affect coordinates
      for i = #section_coords, 1, -1 do
        table.insert(content, section_coords[i].line + 1, blank_content_line)
      end
      return content
    end,
    starter.gen_hook.adding_bullet("» "),
    starter.gen_hook.aligning('center', 'center'),
  },
  header = header_art,
  footer = '',
})
