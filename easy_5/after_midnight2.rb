def after_midnight(time)
  time_array = time.split(':').map(&:to_i)
  ((time_array[0] % 24) * 60) + time_array[1]
end

def before_midnight(time)
  after_midnight(time) == 0 ? 0 : 1440 - after_midnight(time)
end

p after_midnight('00:00')
p before_midnight('00:00')
p after_midnight('12:34')
p before_midnight('12:34')
p after_midnight('24:00')
p before_midnight('24:00')
