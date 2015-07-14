require "uri"
require "json"
require "net/http"

def get_team_record(parameter, details)
  wins = 0
  losses = 0
  op = ""
  uri = URI("http://104.131.4.105/team/" + parameter)
  http = Net::HTTP.new(uri.host, uri.port)
  request = Net::HTTP::Get.new(uri.request_uri)
  response = http.request(request)
  result = JSON.parse(response.body)
  if !result.has_key?("error")
    result["games"].reverse!
    result["games"].each do |e|
      if (e["time"] == "FINAL")
        e.each do |key, val|
          if val == parameter && key != "winner" && key != "loser"
            score = key[0..4] + "score"
            if key[0..3] == "home"
              otherScore = "away_score"
              otherTeam = "away_team"
            else
              otherScore = "home_score"
              otherTeam = "home_team"
            end
            if e[otherScore].to_i < 9
              e[otherScore] = "0#{e[otherScore]}"
            end
            win = (e["winner"] == parameter)? "W" : "L"
            op += "%02d :: %s : %02d - %02d : %-18s %s\n" % [e["week"], parameter, e[score], e[otherScore], e[otherTeam], win]
          end
        end
      end
    end
    puts "%02d - %02d" % [result["record"]["wins"], result["record"]["losses"]]
    if details != "1"
      puts op.chomp
    end
  else
    puts "No Data"
  end


=begin
parameter = "teams"
uri = URI("http://104.131.4.105/" + parameter)
http = Net::HTTP.new(uri.host, uri.port)
request = Net::HTTP::Get.new(uri.request_uri)
response = http.request(request)
result = JSON.parse(response.body)
# result["teams"].each{|x| puts e["team_name"].length}
lengths = result["teams"].map{|x| x["team_name"].length}
puts lengths.max
=end
end

if ARGV[0].nil?
  abort("Invalid input")
end

get_team_record(ARGV[0], ARGV[1])
