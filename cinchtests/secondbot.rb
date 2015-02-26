require "cinch"

bot = Cinch::Bot.new do
    configure do |c|
        c.server = "irc.freenode.org"
        c.channels = ["#cinch-bots"]
        c.nick = "bot2"
    end
    on :message, /Hello/ do |m|
        m.reply "Hello, #{m.user.nick}"
    end
end

bot.start