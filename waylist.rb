require "pry"
require "csv"
require "./message"

class WayList

  include Message

  attr_reader :lists

  def initialize(path)
    @lists = { a: [], b: [] }
    CSV.foreach(path, headers: true) do |row|
      @lists[row["name"].to_sym] << { additional_hp: row["additional_hp"].to_i, msg: row["msg"] }

    end
  end

  def show_name
    way_message
  end

  def pick_way(name)
    @lists[name.to_sym].sample
  end

end
