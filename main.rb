require "pry"
require "csv"
require "./character"
require "./player"
require "./waylist.rb"
require "./ways_information"

character_params = [
  { name: "マリオ", hp: 500 },
  { name: "ルイージ", hp: 450 },
  { name: "ピーチ", hp: 400 },
]

player = Player.new(character_params)
way_list = WayList.new("way_list.csv")

player.show_characters
player.choose_character(character_params)
way_list.way
player.choose_way
ways_information.pick_hp_msg(player.choose_way)
# way_list.show_message
