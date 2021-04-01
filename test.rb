require "csv"
require "pry"

class WayList

  attr_reader :lists

  def initialize(path)
    @lists = { a: [], b: [] }
    CSV.foreach(path, headers: true) do |row|
      @lists[row["index"].to_sym] << { additional_hp: row["additional_hp"].to_i, msg: row["msg"] }
      # if row["way"] == "a"
      #   lists[:a] << { additional_hp: row["additional_hp"].to_i, msg: row["msg"] }
      # elsif row["way"]  == "b"
      #   lists[:b] << { additional_hp: row["additional_hp"].to_i, msg: row["msg"] }
      # end
    end
  end

  def choose_way
    while true
      print "aまたはbを入力 >"
      selected_way = gets.chomp
    break if selected_way == "a" || selected_way == "b"
    puts <<~TEXT

          =*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=
            #{selected_way}の道はありません。
            aまたはbを選んでください。
          =*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=

        TEXT
    end
    selected_way
  end

  def calculation_hp(selected_way)
    if selected_way == "a"
      a_shuffle = @lists[:a].sample
      puts <<~TEXT
            =*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=
            #{a_shuffle[:msg]}

            #{a_shuffle[:additional_hp].to_i}
            =*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=
           TEXT

    elsif selected_way == "b"
      b_shuffle = @lists[:b].sample
      puts <<~TEXT
            =*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=
            #{b_shuffle[:msg]}

            #{b_shuffle[:additional_hp].to_i}
            =*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=
           TEXT
    end
  # # def show_message
  # #   puts @lists[:a].sample[:msg]
  # #   puts @lists[:a].sample[:additional_hp]
  # # end
  end
end

way_list = WayList.new("way_list.csv")

# chosen_way = way_list.choose_way
way_list.calculation_hp(way_list.choose_way)
# way_list.show_message
