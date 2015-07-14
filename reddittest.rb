require "uri"
require "json"
require "net/http"

while true
  print "Subreddit:"
  inp = gets.chomp
  # inp = "cfb"
  if inp == "c"
    break
  end
  uri = URI("http://www.reddit.com/r/" + inp + "/hot.json")
  http = Net::HTTP.new(uri.host, uri.port)
  request = Net::HTTP::Get.new(uri.request_uri)
  response = http.request(request)
  result = JSON.parse(response.body)

  result["data"]["children"].each{|x|
    puts x["data"]["title"]
    puts "-" * 128
  }
end