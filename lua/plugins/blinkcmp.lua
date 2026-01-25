return {
	"saghen/blink.cmp",
	version = "1.*",
	opts = {
		sources = {
			default = {
				"lsp",
				"path",
				"buffer",
			},
		},
		completion = {
			documentation = {
				auto_show = true,
			},
		},
		signature = { enabled = true },
		fuzzy = { implementation = "prefer_rust_with_warning" },
	},
	opts_extend = { "sources.default" },
}
