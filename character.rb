class Character
  attr_reader :id, :name
  attr_accessor :hp
  @@count = 0

  def initialize(character_params)
    @id = @@count += 1
    @name = character_params[:name]
    @hp = character_params[:hp]
  end

  def calculation_hp(proceed_way)

    # proceeded_way_hp = proceeded_way[:additional_hp].to_i
    # proceeded_way_msg = proceeded_way[:msg]
    #
    # left_hp = chosen_character.hp + proceeded_way[:additional_hp].to_i
    #   puts <<~TEXT
    #         =*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=
    #         #{proceeded_way_msg}
    #
    #         #{chosen_character.name}のHPは#{left_hp}です。
    #         =*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=
    #        TEXT
  end
end
