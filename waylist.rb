require "pry"
require "csv"
require "./message"
# require "./player.rb"



# class Student
#   attr_reader :name, :age
#   def initialize(name:,age:)
#     @name = name
#     @age = age
#   end
#
#   def greet
#     puts "はじめまして！"
#   end
#
#   def introduce
#     puts "私は#{@name}です。年齢は#{@age}歳です。"
#   end
# end
#
# student = Student.new(name: "田中", age: 17)
# # インスタンス変数を参照
# p student.name
# p student.age

# lists = {
#   a: [
#     { additional_hp: 1, msg: 'hoge1' },
#     { additional_hp: 2, msg: 'hoge2' },
#     { additional_hp: 3, msg: 'hoge3' },
#   ],
#   b: [
#     { additional_hp: 4, msg: 'hoge4' },
#     { additional_hp: 5, msg: 'hoge5' },
#     { additional_hp: 6, msg: 'hoge6' },
#   ]
# }
#
# # lists = {
# #   a: [{ additional_hp: 1, msg: 'hoge1' },{ additional_hp: 2, msg: 'hoge2' }],
# #   b: [{ additional_hp: 4, msg: 'hoge4' },{ additional_hp: 5, msg: 'hoge5' }]
# # }

# puts lists[:a][1].values


class WayList

  include Message

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

  def show_index
    index_message
  end

  def pick_way(index)
    @lists[index.to_sym].sample
  end

end


# way_list = WayList.new("way_list.csv")
# way_list.desplay_way


#   def chosen_way("way_list.csv")
#
#     while true
#       print "aまたはbを入力 >"
#       chosen_way = gets.chomp
#       if chosen_way == "a"
#         puts "#{@lists[:a][:msg].sample}"
#
#       elsif chosen_way == "b"
#         puts "#{@lists[:b][:msg].sample}"
#       end
#       break if chosen_way== "a" || chosen_way == "b"
#         puts <<~TEXT
#
#                =*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=
#                #{chosen_way}の道はありません。
#                 aまたはbを選んでください。
#                =*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=
#
#              TEXT
#       end
#   end
# end
#
# puts way.chosen_way("way_list.csv")
