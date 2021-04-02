require "pry"
require "csv"
require "./character"
require "./player"
require "./waylist.rb"
require "./message"


character_params = [
  { name: "マリオ", hp: 500 },
  { name: "ルイージ", hp: 450 },
  { name: "ピーチ", hp: 400 },
]

player = Player.new(character_params)

player.show_characters
player.choose_character(character_params)
player.choose_way
