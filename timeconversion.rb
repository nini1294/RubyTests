require 'active_support/core_ext/time'

while true
  print "Where:"
  timezone = gets.chomp.upcase
  here = Time.now()
  # ActiveSupport::TimeZone.zones_map.each_value { |val| puts val }
  there = here.in_time_zone(timezone)
  puts there.strftime("%d/%m %I:%M %p %Z(%:z)")
end