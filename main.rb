require "pry"
require "csv"
require "./character"
require "./player"
require "./waylist.rb"


character_params = [
  { name: "マリオ", hp: 500 },
  { name: "ルイージ", hp: 450 },
  { name: "ピーチ", hp: 400 },
]

player = Player.new(character_params)
way_list = WayList.new("way_list.csv")

player.show_characters
player.choose_character(character_params)
way_list.show_index
# player.choose_index
way_list.pick_way(player.choose_index)
proceed_way = way_list.pick_way(player.choose_index)
character.calculation_hp(proceed_way)
# way_list.show_message
