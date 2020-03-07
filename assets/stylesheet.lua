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

styles.label = {
  padding = 3
}

styles.cycle_list = {
  display = "inline",
}

styles.cycle_list_display = {
  border = 1,
  border_color = "dark_accent",
  background_color = "dark_shade",
  color = "light_shade",
  padding = 4
}

styles.cycle_list_button = {
  margin = 0,
  padding = 4
}

styles.main_menu = {
  background_color = "main",
  width = 300,
  height = 250,
  opacity = 0.0,
  padding = 10,
}

styles.menu_button = {
  width = "75%",
  align = "center",
  opacity = 0.9
}

styles.menu_screen_title = {
  padding = 15,
  font_size = 50,
  color = "light_accent"
}

styles["settings-dialog"] = {
  background_color = "main",
  width = 300,
  height = 250,
  padding = 10,
}

styles.story_message = {
  width = "80%",
  background_color = "white",
  background_image = moonpie.graphics.image.load("assets/images/scroll-message.png"),
}

styles.story_message_internal = {
  padding = { top = 60, bottom = 140, right = 180, left = 180 },
  opacity = 0.7,
}

styles.title_screen = {
  background_image = moonpie.graphics.image.load("assets/images/title-screen.png")
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

styles.hero_view = {
  background_color = "light_shade",
  padding = 10,
  margin = 2,
  border = 2,
  border_color = "light_accent",
  width = "33%"
}

styles["hero-row"] = {
  border = 1,
  border_color = "light_accent",
  padding = 6
}

styles["hero-row-name"] = {
  font_size = 24,
  font_name = "default",
  margin = 4
}

styles["game-screen-header"] = {
  border = 2,
  border_color = "dark_accent",
  background_color = "dark_shade",
  padding = 20,
  color = "main"
}

styles["game-screen-content"] = { }

styles["game-screen-title"] = {
  font_size = 42,
  font_name = "headline"
}

styles["quest-view"] = {
  border = 2,
  border_color = "light_accent",
  padding = 20,
  width = "33%"
}

styles["quest-title"] = {
  font_size = 24,
  font_name = "default",
  margin = 4
}

styles["quest-content"] = {
  font_size = 12
}

styles["quest-image"] = {
  border = 1,
  border_color = "light_accent"
}

styles.room_row = {
  border = 1,
  border_color = "light_accent",
  padding = 20
}
styles.room_list = {
  background_color = "main",
  margin = 20,
  padding = 20
}

styles.room_name = {
  font_size = 20,
  font_name = "default-bold"
}

styles.version = {
  color = "white",
  font_name = "fixed",
  padding = 4

}