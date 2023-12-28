require('telescope').setup{
  defaults = {
    file_ignore_patterns = {"node_modules", "env", "venv"}
    -- setup{ defaults = { file_ignore_patterns = {"node_modules"} }
  },
  pickers = {
    find_files = {
      theme = "dropdown",
    }
  },
  extensions = {
    -- ...
  }
}
