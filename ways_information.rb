require "csv"
require "./character"
require "./player"

class WaysInformation

  def hp_msg
    if selected_way == "a"
      a_shuffle = @lists[:a].sample
      chosen_character.hp += a_shuffle[:additional_hp].to_i
      puts <<~TEXT
            =*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=
            #{a_shuffle[:msg]}

            #{chosen_character.name}のHPは#{a_shuffle[:additional_hp].to_i}です。
            =*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=
           TEXT
    elsif selected_way == "b"
      b_shuffle = @lists[:b].sample
      chosen_character.hp += b_shuffle[:additional_hp].to_i
      puts <<~TEXT
            =*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=
            #{b_shuffle[:msg]}

            #{chosen_character.name}のHPは#{b_shuffle[:additional_hp].to_i}です。
            =*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=
           TEXT
    end
  end
end

ways_information = WaysInformation.new
