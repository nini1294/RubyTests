require 'cinch'

bot = Cinch::Bot.new do
    configure do |c|
        c.server = "irc.freenode.org"
        c.channels = ["#cinch-bots"]
        c.nick = "nishbot"
    end

    on :message, "Hello" do |m|
        m.reply "Hello, #{m.user.nick}"
    end

    on :message, /debug/ do |m|
        m.reply m
    end

    on :message, /time/ do |m|
        t = Time.now
        m.reply "It is, #{t.strftime("%H:%M")}"
    end

end

bot.start
