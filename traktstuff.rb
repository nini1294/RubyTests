require "uri"
require "json"
require "net/http"

key = "2ed1543a3068685354d8a7ade6474072"
print "Name:"
showname = gets.chomp
print "Season Number:"
seasonnum = gets.chomp
ur = "http://api.trakt.tv/show/season.json/" + key + "/" + showname + "/" + seasonnum
puts ur
# ur = "http://api.trakt.tv/shows/trending.json/2ed1543a3068685354d8a7ade6474072"
uri = URI(ur)
http = Net::HTTP.new(uri.host, uri.port)
request = Net::HTTP::Get.new(uri.request_uri)
response = http.request(request)
result = JSON.parse(response.body)
# puts result
result.each{ |x|
    print "%02d : " % x["episode"]
    if x["first_aired_iso"] != nil
        print x["first_aired_iso"][0..9]
    else
        print "Ep Unaired"
    end
    print " : "
    puts x["title"]
}