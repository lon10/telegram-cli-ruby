require 'singleton'
require 'yaml'

class TelegramMessageService
  include Singleton

  TG_CONFIG = YAML.load_file(File.expand_path('../config/telegram.yml', __FILE__))

  def send(message)
    system("#{TG_CONFIG['telegram_path']} -k #{TG_CONFIG['key_path']} -W -e 'msg #{TG_CONFIG['peer']} #{message}'")
  end
end