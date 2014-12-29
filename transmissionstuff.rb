require 'transmission_api'

client = TransmissionApi::Client.new(
  :username => "nishant",
  :password => "admin",
  :url      => "http://192.168.1.100:9091/transmission/web/"
  )

torrents = client.all;
torrents.each_value { |val| puts val }