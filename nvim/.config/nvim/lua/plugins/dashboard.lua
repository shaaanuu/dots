return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup ({
	theme = 'doom',
	config = {
		center = {
  			{ icon = "󰈸  ", desc = "Hack NASA",        action = "!echo 'Access denied 🛑'",       key = "h" },
  			{ icon = "  ", desc = "Write Code",      action = "ene | startinsert",             key = "w" },
  			{ icon = "󰊢  ", desc = "Procrastinate",   action = "!cowsay '5 more minutes...'",   key = "p" },
			{ icon = "󱎫  ", desc = "Touch Grass",     action = "!echo '404: Grass not found'",  key = "t" },
  			{ icon = "  ", desc = "rm -rf /",         action = "!echo '💀 Nice try, rootless'", key = "r" },
  			{ icon = "󰩈  ", desc = "Exit Neovim",     action = "qa",                            key = "q" },
		}
	}
    })
  end,
  dependencies = {'nvim-tree/nvim-web-devicons'}
}
