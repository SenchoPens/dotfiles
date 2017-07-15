let options = {
  "hints.chars": "fjdksla;ghrueiwonc mv",
  "config_file_directory": "~/.config/vimfx",
  "mode.normal.tab_select_previous": "K    gT",
  "mode.normal.tab_select_next": "J    gt",
  "mode.normal.scroll_down": "",
  "mode.normal.scroll_up": "",
  "mode.normal.scroll_half_page_down": "j",
  "mode.normal.scroll_half_page_up": "k",
}
Object.entries(options).forEach(([option, value]) => vimfx.set(option, value))

