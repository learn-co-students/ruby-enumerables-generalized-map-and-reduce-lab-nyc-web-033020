# Your Code Here

def map (source_array)
  new_array = []
  counter = 0
  while counter < source_array.length do
    new_array << yield(source_array[counter])
    counter += 1
  end
  new_array
end

def reduce (source_array, starting_value =nil)
  if starting_value  
    num1 = starting_value
    counter = 0
  else
    num1 = source_array[0]
    counter = 1
  end
  
  while counter < source_array.length do
    num1 = yield(num1, source_array[counter])
    counter+= 1
  end
  num1
end