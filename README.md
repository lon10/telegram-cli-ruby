telegram-cli-ruby
=================

##Install

Install Telegram messenger CLI from https://github.com/vysheng/tg

Rgister it with phone number

Create 'config/telegram.yml' with content:

	peer: Peer from contact list, which will receive messages

	key_path: Path to your public key

	telegram_path: Path to telegram-cli application

##Usage

```ruby
TelegramMessageService.instance.send('message text')
```