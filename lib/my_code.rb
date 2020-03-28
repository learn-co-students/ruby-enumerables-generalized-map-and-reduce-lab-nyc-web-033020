# Your Code Here
def map(source_array)
  index = 0 
  new_array = []
  while index < source_array.length do
    new_array[index] = yield(source_array[index])
    index += 1
  end
  return new_array
end

def reduce(source_array, starting_point = 0)
  index = 0 
  result = starting_point
    while index < source_array.length do 
      result = yield(result, source_array[index])
      index += 1
      end
  if result == 0 
    return true
  end
  result
end