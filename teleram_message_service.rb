require 'singleton'

class TelegramMessageService
  include Singleton

  def send(message, peer)
    system("telegram-cli -k /Users/rustam/dist/tg/tg-server.pub -W -e 'msg #{peer} #{message}'")
  end
end