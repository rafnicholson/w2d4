# Write a method no_dupes?(arr) that accepts an array as an arg and returns 
# an new array containing the elements that were not repeated in the array.
def no_dupes?(arr)
    arr.to_h
end 

p no_dupes?([1, 1, 2, 1, 3, 2, 4])         # => [3, 4]
p no_dupes?(['x', 'x', 'y', 'z', 'z'])     # => ['y']
p no_dupes?([true, true, true])            # => []