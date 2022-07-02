def multiply(num1, num2)
  num1 * num2
end

def power(base, n)
  (n-1).times{ multiply(base, base) }
end

p power(2, 2)