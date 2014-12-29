=begin
a = 0...10
a = a.to_a
a.map!.with_index { |x, i|
  x * i
}
puts a.to_s
=end

require "uri"
require "json"
require "net/http"

uri = URI("http://www.reddit.com/r/gatech/hot.json")
http = Net::HTTP.new(uri.host, uri.port)
request = Net::HTTP::Get.new(uri.request_uri)
result = JSON.parse(http.request(request).body)

result["data"]["children"].each { |x|
  puts x["data"]["title"]
}