-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

moonpie.graphics.font:register("assets/fonts/Black Window.ttf", "headline")
moonpie.graphics.font:register("assets/fonts/Black Window.ttf", "headline-bold")
moonpie.graphics.font:register("assets/fonts/Abbasy Calligraphy Typeface.ttf", "handwriting")

moonpie.graphics.colors.light_shade = moonpie.graphics.colors.convert_hex("#f3f3f3")
moonpie.graphics.colors.light_accent = moonpie.graphics.colors.convert_hex("#ebaf25")
moonpie.graphics.colors.main = moonpie.graphics.colors.convert_hex("#8caab6")
moonpie.graphics.colors.dark_accent = moonpie.graphics.colors.convert_hex("#e22b3f")
moonpie.graphics.colors.dark_shade = moonpie.graphics.colors.convert_hex("#36405d")

moonpie.graphics.colors.button_default = moonpie.graphics.colors.dark_shade
moonpie.graphics.colors.button_default_hover = moonpie.graphics.colors.dark_shade
moonpie.graphics.colors.button_text = moonpie.graphics.colors.white
moonpie.graphics.colors.primary = moonpie.graphics.colors.dark_accent
moonpie.graphics.colors.info = moonpie.graphics.colors.steel_gray
moonpie.graphics.colors.success = moonpie.graphics.colors.highland
moonpie.graphics.colors.warning = moonpie.graphics.colors.zest
moonpie.graphics.colors.danger = moonpie.graphics.colors.pomegranate

local styles = moonpie.ui.styles

styles.main_menu = {
  background_color = "main",
  width = 300,
  height = 250,
  opacity = 0.5,
  padding = 10,
}

styles.menu_button = {
  width = "75%",
  align = "center"
}

styles.menu_screen_title = {
  padding = 30,
  font_size = 50
}

styles.story_message = {
  width = "80%",
  background_color = "main",
  padding = 10,
  opacity = 0.7
}

styles.message_title = {
  color = "dark_shade",
  font_size = 40,
  font_name = "Black Window",
  margin = 5
}

styles.message_sub_title = {
  color = "dark_shade",
  font_size = 30,
  font_name = "Black Window",
  margin = 5
}

styles.message_text = {
  font_size = 26,
  font_name = "handwriting"
}