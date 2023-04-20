require("neo-tree").setup({
	close_if_last_window = false,
  popup_border_style = "rounded",
  enable_git_status = true,
  enable_diagnostics = true,
  filesystem = {
    filtered_items = {
      hide_dotfiles = false,
      hide_gitignored = false,
    },
    follow_current_file = true,
    use_libuv_file_watcher = true
  },
  buffers = {
    follow_current_file = true,
  }
})
