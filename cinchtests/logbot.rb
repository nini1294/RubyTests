require 'cinch'


class Logger

  include Cinch::Plugin

  # listen_to :connect, method: :setup
  listen_to :disconnect, method: :cleanup
  listen_to :message, method: :log

  def initialize(*)
    super
    @long_format = "%Y-%m-%d %H:%M:%S"
    # @logfile = File.open('logs.txt', 'a')
  end

  def log(m)
    time = Time.now.strftime(@long_format)
    formatted = sprintf("%{time} | %{nick}: %{msg}", :time => time, :nick => m.user.name, :msg  => m.message)
    File.open('logs.txt', 'a') do |f|
      f.puts formatted
    end
  end

  def cleanup
    # @logfile.close
  end

end


logbot = Cinch::Bot.new do
  configure do |c|
    c.nick = "nishbot"
    c.server = "irc.freenode.org"
    c.channels = ["#nish-bots"]
    c.plugins.plugins = [Logger]
  end
end

logbot.start
