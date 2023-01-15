local status, db = pcall(require, "dashboard")
local home = os.getenv("HOME")

db.default_banner = {
	"",
	"",
	"███╗   ██╗███████╗ ██████╗        ██████╗██╗  ██╗ █████╗ ██████╗  █████╗ ",
	"████╗  ██║██╔════╝██╔═══██╗      ██╔════╝██║  ██║██╔══██╗██╔══██╗██╔══██╗",
	"██╔██╗ ██║█████╗  ██║   ██║█████╗██║     ███████║███████║██████╔╝███████║",
	"██║╚██╗██║██╔══╝  ██║   ██║╚════╝██║     ██╔══██║██╔══██║██╔═══╝ ██╔══██║",
	"██║ ╚████║███████╗╚██████╔╝      ╚██████╗██║  ██║██║  ██║██║     ██║  ██║",
	"╚═╝  ╚═══╝╚══════╝ ╚═════╝        ╚═════╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝     ╚═╝  ╚═╝",
	"",
	" [ Una configruracion disenada para dislexicos y mancos ] ",
	"",
}
-- linux
--db.preview_command = 'ueberzug'
--
db.preview_file_path = home .. '/.config/nvim/static/neovim.cat'
db.preview_file_height = 30
db.preview_file_width = 70
db.custom_center = {
	{
		icon = "  ",
		desc = "Sesion Reciente(aun no funciona)           ",
		shortcut = "<SPACE>+s+l",
		action = "SessionLoad",
	},
	{
		icon = "  ",
		desc = "Archivos Recientes                         ",
		action = "Telescope oldfiles",
		shortcut = "<SPACE>+t+o",
	},
	{
		icon = "  ",
		desc = "Archivos                                   ",
		action = "Telescope find_files",
		shortcut = "<SPACE>+t+f",
	},
	{
		icon = "  ",
		desc = "Neo-Tree                                   ",
		action = "NvimTreeOpen",
		shortcut = "<space>+1",
	},
	{
		icon = "  ",
		desc = "Palabras clave                             ",
		action = "Telescope live_grep",
		shortcut = "<SPACE>+t+p",
	},
	{
		icon = "  ",
		desc = "Cambio de tema de coolor                   ",
		action = "Telescope colorscheme",
		shortcut = "<SPACE>+t+t",
	},
}
db.custom_footer = { "", "🎉 Los chapa-proyect te llenan el ALMA" }
db.session_directory = "/home/dt/.config/nvim/session"


