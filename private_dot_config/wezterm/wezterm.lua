-- Pull in the wezterm API
local wezterm = require("wezterm")

-- Build config
local config = wezterm.config_builder()

-- Get prestart aesthetics
config = {
	automatically_reload_config = true,
	enable_tab_bar = true, -- false to get rid of the upper tab but problem is that even though i said below resizeable, it does not apply in my ubuntu linux...
	window_close_confirmation = "NeverPrompt",
	window_decorations = "RESIZE", -- Get rid of the min, close ui window, but still let it to be resizable
}
-- ---------- Fonts ----------
-- Base font: use the exact family you have installed
-- Avoid stretch/style here; WezTerm will use the Regular face by default.
config.font = wezterm.font_with_fallback({
	--{ family = "AnonymicePro Nerd Font", weight = "Regular" },
	--{ family = "AnonymicePro Nerd Font Mono", weight = "Regular" }, -- secondary NF (non-mono)
	{ family = "JetBrains Mono", weight = "Bold" }, -- nice fallback
	{ family = "Noto Color Emoji" }, -- emoji fallback
})

-- Explicitly map bold/italic variants so wezterm doesn't try to synthesize
config.font_rules = {
	-- Italic
	{
		italic = true,
		intensity = "Normal",
		font = wezterm.font({ family = "AnonymicePro Nerd Font Mono", style = "Italic" }),
	},
	-- Bold
	{
		italic = false,
		intensity = "Bold",
		font = wezterm.font({ family = "AnonymicePro Nerd Font Mono", weight = "Bold" }),
	},
	-- Bold Italic
	{
		italic = true,
		intensity = "Bold",
		font = wezterm.font({ family = "AnonymicePro Nerd Font Mono", weight = "Bold", style = "Italic" }),
	},
}

-- Font size & optional shaping
config.font_size = 12.5
config.harfbuzz_features = { "calt=1", "clig=1", "liga=1" }

-- ---------- Right status (clock) ----------
wezterm.on("update-right-status", function(window, pane)
	local date = wezterm.strftime("%a %b %-d %H:%M ")
	-- fa_clock_o may be nil on some systems; fallback to emoji
	local clock = wezterm.nerdfonts.fa_clock_o or "🕒"
	window:set_right_status(wezterm.format({
		{ Text = clock .. " " .. date },
	}))
end)

-- ---------- Window geometry ----------
config.initial_cols = 90
config.initial_rows = 30
config.window_padding = {
	left = 3,
	right = 3,
	top = 0,
	bottom = 0,
}
-- ---------- Colors & look ----------
config.color_scheme = "Nord (Gogh)"
config.use_fancy_tab_bar = false
config.tab_bar_at_bottom = false

config.window_padding = { left = 2, right = 2, top = 1, bottom = 1 }
config.default_cursor_style = "BlinkingBar"

config.background = {
	{
		source = {
			Gradient = {
				colors = {
					"#0f0c29",
					"#302b63",
					"#24243e",
				},
				interpolation = "Linear",
				blend = "Rgb",
			},
		},
		width = "100%",
		height = "100%",
		opacity = 0.85,
	},
}

-- Return config
return config
