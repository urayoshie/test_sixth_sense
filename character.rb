require "pry"
require "./message"

class Character

  include Message

  attr_reader :id
  attr_accessor :name, :hp
  @@count = 0

  def initialize(character_params)
    @id = @@count += 1
    @name = character_params[:name]
    @hp = character_params[:hp]
  end

  def calculation_hp(proceed_way)
    proceeded_way_hp = proceed_way[:additional_hp]
    proceeded_way_msg = proceed_way[:msg]

    @hp += proceeded_way_hp

    @hp = 0 if @hp <= 0

    action_message(proceeded_way_msg)
  end
end
