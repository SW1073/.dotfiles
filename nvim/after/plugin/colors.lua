function ConfigureGruvbox()
	require("gruvbox").setup({
		undercurl = true,
		underline = true,
		bold = true,
		italic = true,
		strikethrough = true,
		invert_selection = false,
		invert_signs = false,
		invert_tabline = false,
		invert_intend_guides = false,
		inverse = true, -- invert background for search, diffs, statuslines and errors
		contrast = "", -- can be "hard", "soft" or empty string
		palette_overrides = {},
		overrides = {},
		dim_inactive = false,
		transparent_mode = true,
	})
end

function ConfigureGithubDefault()
    -- Example config in Lua
    require("github-theme").setup({
        theme_style = "dark",
        function_style = "italic",
        sidebars = {"qf", "vista_kind", "terminal", "packer"},

        -- Change the "hint" color to the "orange" color, and make the "error" color bright red
        -- CAN CONFIGURE THIS
        colors = {hint = "white", error = "#ff0000"},

        -- Overwrite the highlight groups
        overrides = function(c)
            return {
                htmlTag = {fg = c.red, bg = "#282c34", sp = c.hint, style = "underline"},
                DiagnosticHint = {link = "LspDiagnosticsDefaultHint"},
                -- this will remove the highlight groups
                TSField = {},
            }
        end
    })
end


function ColorMyPencils(color)
	color = color or "gruvbox" -- default color o whatever color we pass in
	if color == "gruvbox" then ConfigureGithubDefault()
    else if color == "github_dark_default" then ConfigureGithubDefault() end
    end
	vim.cmd.colorscheme(color)
	vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
	vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})
end

ColorMyPencils()
