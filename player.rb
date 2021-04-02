require "pry"
require "csv"
require "./character"
require "./message"
# require "./way.rb"


class Player

  include Message

  attr_reader :chosen_character

  def initialize(character_params)
    @characters = []
    character_params.each do |param|
      @characters << Character.new(param)
    end
  end
 # binding.spry
  def show_characters

    start_message

    @characters.each do |character|
      puts "#{character.id}.#{character.name}"
    end
  end

  def choose_character(character_params)
    while true
      puts ""
      print "キャラクターの選択(数字) >"
      select_character_num = gets.to_i
      @chosen_character = @characters.find { |character| character.id == select_character_num }
    break if !chosen_character.nil?
    error_chatacter_message(select_character_num)
    end
    game_explanation
  end

  def choose_index(path)
    while true
      print "aまたはbを入力 >"
      selected_index = gets.chomp
    break if selected_index == "a" || selected_index == "b"
    error_way_message(selected_index)
    end
    selected_index
  end
end

# character_params = [
#   { name: "マリオ", hp: 500 },
#   { name: "ルイージ", hp: 450 },
#   { name: "ピーチ", hp: 400 },
# ]
#
# player = Player.new(character_params)
#
# player.show_characters
# player.choose_character(character_params)
# player.first_action
# player.choose_way
