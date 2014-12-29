require "uri"
require "json"
require "net/http"

Key = "2ed1543a3068685354d8a7ade6474072"
print "Name:"
showname = gets.chomp
print "Season Number:"
seasonnum = gets.chomp
ur = "http://api.trakt.tv/show/season.json/" + Key + "/" + showname + "/" + seasonnum
# ur = "http://api.trakt.tv/shows/trending.json/2ed1543a3068685354d8a7ade6474072"
uri = URI(ur)
http = Net::HTTP.new(uri.host, uri.port)
request = Net::HTTP::Get.new(uri.request_uri)
response = http.request(request)
result = JSON.parse(response.body)
puts result
result.each{ |x|
  puts x["title"]
}