=begin

=end
DEGREE = "\xC2\xB0"
MINUTES_IN_DEGREE = 60
SECONDS_IN_MINUTE = 60
SECONDS_IN_DEGREE = MINUTES_IN_DEGREE * SECONDS_IN_MINUTE

def dms(float)
  total_seconds = float * SECONDS_IN_DEGREE.round
  degrees, leftover_seconds = total_seconds.divmod(SECONDS_IN_DEGREE)
  if (float < 0) || (float > 360)
    degrees = float % 360
  end
  minutes, seconds = leftover_seconds.divmod(SECONDS_IN_MINUTE)
  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end
p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
p dms(400) # %(400°00'00")
                   # %(40°00'00")
p dms(-40) # %(-40°00'00")
                   # %(320°00'00")
p dms(-420) # %(-420°00'00")
                     # %(300°00'00")