def oddities(array)
  array.select do |element|
    (array.index(element)).even?
  end
end

def evenities(array)
  array.select do |element|
    (array.index(element)).odd?
  end
end

p oddities([2, 3, 4, 5, 6])
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []
