# Your Code Here
def map(array)
  new = [ ]
  i = 0
  while i < array.size
    new.push(yield(array[i]))
    i += 1
  end
  new
end


def reduce(source_array, starting_value = nil)
 if starting_value
  sum = starting_value
  i = 0
else
   sum = source_array[0]
    i = 1
  end

  while i < source_array.size do
   sum = yield(sum, source_array[i])
   i += 1
  end
  sum
end
