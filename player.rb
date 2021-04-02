require "pry"
require "csv"
require "./character"
require "./waylist.rb"
require "./message"



class Player

  include Message

  attr_reader :chosen_character

  def initialize(character_params)
    @characters = []
    character_params.each do |param|
      @characters << Character.new(param)
    end
  end

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

  def choose_name
    while true
      print "aまたはbを入力 >"
      selected_name = gets.chomp
    break if selected_name == "a" || selected_name == "b"
    error_way_message(selected_name)
    end
    selected_name
  end

  def choose_way

    way_list = WayList.new("way_list.csv")

    while true
      way_list.show_name
      proceed_way = way_list.pick_way(choose_name)
      @chosen_character.calculation_hp(proceed_way)
    break if @chosen_character.hp >= 1000 || @chosen_character.hp <= 0
    end
    result
  end

  def result
    if @chosen_character.hp >= 1000
      goal_message

    elsif @chosen_character.hp == 0
      lost_message

    end
  end
end
