return {
	"saghen/blink.cmp",
	-- dependencies = { "rafamadriz/friendly-snippets" },
	version = "1.*",
	-- AND/OR build from source, requires nightly: https://rust-lang.github.io/rustup/concepts/channels.html#working-with-nightly-rust
	-- build = "cargo build --release",

	opts = {
		keymap = {
			preset = "enter",
			["<Tab>"] = {
				"select_next",
				"snippet_forward",
				"fallback",
			},
			["<S-Tab>"] = {
				"select_prev",
				"snippet_backward",
				"fallback",
			},
		},
		completion = { documentation = { auto_show = false } },
		fuzzy = { implementation = "prefer_rust" },
	},
}
