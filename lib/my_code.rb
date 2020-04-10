# Your Code Here
def map(array)
  new_array = []
  i = 0
  while i < array.length do
    new_array << yield(array[i])
    i += 1
  end
  new_array
end


#the video walkthrough link was unavailable, but I was able to find this solution online
#is there a way to solve this without the splat operator?
def reduce(array, *starting)
    if starting[0]
      value = starting[0]
      count = 0
    else
      value = array[0]
      count = 1
    end

    while count < array.length do
      value =  yield(value,array[count])
      count+=1
    end
    value
end
