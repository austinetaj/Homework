#O(n^2)
def sluggish_octopus(fishes)
  max = 0
  fishes.each_with_index do |fish1, idx1|
    fishes.each_with_index do |fish2, idx2|
      next if idx1 == idx2
      max = fish2 if fish2.length > fish1.length
    end
  end
  max
end
p sluggish_octopus(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh'])
#O(nlogn) search Dominant Octopus
def merge_sort(array)
  return array if array.count <= 1

  midpoint = array.count / 2
  left = merge_sort(array.take(midpoint))
  right = merge_sort(array.drop(midpoint))

  merge(left, right)
end

def merge(left, right)
  merged = []

  until left.empty? || right.empty?
    case left.first <=> right.first
    when -1
      merged << left.shift
    when 0
      merged << left.shift
    when 1
      merged << right.shift
    end
  end

  merged.concat(left)
  merged.concat(right)

  merged
end

p merge_sort([3,2,5,7,1,0,6])

# O(n) linear search
def linear_search(fishes)
  max = fishes.first
  fishes.each_with_index do |fish, idx|
    max = fish if max.length < fish.length && idx != 0
  end
  max
end

p linear_search(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh'])


# O(n) slow dance
def slow_dance(direction, array)
    array.each_with_index do |tile, idx|
    return idx if tile == direction
  end
end
 p slow_dance("down", ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ])

 # O(1) fast dance
 def fast_dance(direction, tiles_hash)
   tiles_hash[direction]
 end
 p fast_dance("left-down", {
     "up" => 0,
     "right-up" => 1,
     "right"=> 2,
     "right-down" => 3,
     "down" => 4,
     "left-down" => 5,
     "left" => 6,
     "left-up" => 7
    })
