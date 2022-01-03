require('lualine').setup({
  options = {
    section_separators = { left = '', right = ''},
    component_separators = { left = '', right = ''},
    theme = 'solarized'
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch'},
    lualine_c = {
      {
        'diff',
        colored = true,
        symbols = {added = '+', modified = '~', removed = '-'}
      },
      { 'filename', path = 1 },
    },
    lualine_x = {'diagnostics', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {}
  },
  inactive_sections = {
    lualine_c = {
      { 'filename', path = 1 },
    },
  }
})
