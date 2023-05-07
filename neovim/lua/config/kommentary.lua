vim.g.kommentary_create_default_mappings = false

require("kommentary.config").configure_language()


vim.keymapping.smap("n", "gcc", "<Plug>kommentary_line_default", {})
vim.keymapping.smap("n", "gc", "<Plug>kommentary_motion_default", {})
vim.keymapping.smap("v", "gc", "<Plug>kommentary_visual_default<C-c>", {})
