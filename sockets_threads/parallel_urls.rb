require 'open-uri'
require 'json'

@base = 'https://hacker-news.firebaseio.com/v0/item/'

def get_title(item_id)
  url = "#{@base}#{item_id}.json"
  url = URI.parse(url)
  listing = JSON.parse(open(url).read)
  puts listing['title']
end

threads = []
items_url = URI.parse('https://hacker-news.firebaseio.com/v0/topstories.json')
items = JSON.parse(open(items_url).read)
items.first(100).each do |item|
  threads << Thread.new{ get_title(item) }
end

threads.each {|t| t.join}
