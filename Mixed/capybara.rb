require 'webdrivers'
require "rubot"

class Web
  def run(server)
    server.channels.each do |channle|
      server.msg(channel, "sonuç tamamlandi")
    end
  end
end

class WeblinkController < Rubot:CON
  # code
end
