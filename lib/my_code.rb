# Your Code Here
def map(source_array)
i = 0 
negative_array = []
while i < source_array.count do
  negative_array << yield(source_array[i])
  i += 1
end
negative_array
end

def reduce(source_array, starting_point = nil)
  
  if starting_point 
memo = starting_point
i = 0 
else
  memo = source_array[0]
  i = 1 
  end
  while i < source_array.count do 
     memo  = yield(memo, source_array[i])
    i += 1 
  end
memo
end
