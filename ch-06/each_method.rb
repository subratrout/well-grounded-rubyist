# when each method is called on a collection object, each yields each item in the collection to code block, one at a time
# 
# 
array = [1, 2, 3, 4, 5, 6]

array.each {|n| puts "The block just got handed #{n}"}


class Array
  def my_each
    c = 0
    until c == size
      yield(self[c])
      c += 1
    end
    self
  end
end


array1 = ["a", "b", "c", "d", "e"]
array1.each {|n| puts "The block just got handed #{n}"}

class Integer
  def my_times
    c = 0
    until c == self
      yield(c)
      c += 1
    end
    self
  end
end


class Array
  def my_each2
    size.my_times do |i|
      yield self[i]
    end
    self
  end
end


# MAP method
# 
# The difference between each and map lies in the return value: each returns its receiver, but map returns a 
# new array. The new array is always the same size as the original array, but instead of the original elements, 
# the new array contains the accumulated return values of the code block from the iterations.
# 
names = ["David", "Alan", "Black"]

cap_names = names.map {|name| name.upcase}

puts cap_names


class Array
  def my_map
    c = 0
    acc = []
    until c == size
      acc << yield(self[c])
      c = c + 1
    end
    acc
  end
end

cap_names2 = names.my_map {|name| name.upcase}

puts cap_names2


class Array
  def my_each
    c = 0
    until c == size
      yield(self[c])
      c += 1
    end
    self
  end

  def my_map2
    acc = []
    my_each { |n| acc << yield(n)}
    acc
  end
end

places = [ "Salt lake City", "San Francisco", "Baltimore"]
cap_name3 = places.my_map2 {|n| n.upcase}
puts cap_name3