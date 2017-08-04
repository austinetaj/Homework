require "byebug"
class Map
  attr_accessor :map
  def initialize
    @map = Array.new
  end

  def assign(key, value)
    index = lookup(key)

    @map[index] = [key, value] if index >= 0
    @map << [key, value] if index < 0
  end

  def lookup(key)
    @map.each_with_index do |el, idx|
      # puts "#{el}"
      return idx if el[0] == key
    end
    return -1
  end

  def remove(key)
    index = lookup(key)
    if index >= 0
      @map.delete_at(index)
    else
      puts "No such key"
    end
  end

  def show
    puts "#{@map}"
  end
end

map = Map.new
map.remove("3")
map.assign("a",1)
map.show
map.assign("b",2)
map.show
map.assign("c",3)
map.show
map.assign("d",4)
map.show
map.assign("a",11)
map.show
map.remove("a")
map.show
map.remove("1")
map.show
map.remove("c")
map.show
map.remove("d")
map.show
map.remove("b")
map.show
map.remove("d")
map.show
