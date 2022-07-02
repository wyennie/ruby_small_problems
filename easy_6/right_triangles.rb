def bottom_right(n)
  stars = '*'
  loop do
    break if stars.size > n
    puts stars.rjust(n)
    stars << '*'
  end
end

def bottom_left(n)
  stars = '*'
  loop do
    break if stars.size > n
    puts stars.ljust(n)
    stars << '*'
  end
end

def top_left(n)
  stars = ''
  n.times{stars << '*'}
  loop do
    break if stars.size == 0
    puts stars.ljust(n)
    stars.chop!
  end
end

def top_right(n)
  stars = ''
  n.times{stars << '*'}
  loop do
    break if stars.size == 0
    puts stars.rjust(n)
    stars.chop!
  end
end

def triangle(n, corner)
  if corner == 'top right'
    top_right(n)
  elsif corner == 'top left'
    top_left(n)
  elsif corner == 'bottom left'
    bottom_left(n)
  elsif corner == 'bottom right'
    bottom_right(n)
  end
end


triangle(9, 'top left')