# Your Code Here
def map(array)
  output = []
  count = 0

  while (count < array.count) do
    output.push(yield(array[count]))
    count+=1
  end
  output
end


def reduce(array,*index)
  if index[0]
    value = index[0]
    count = 0
    else
    value = array[0]
    count = 1
  end

  while count < array.count do
    value =  yield(value,array[count])
    count+=1
  end
 value
end
