require 'watir'
require 'webdrivers'




browser = Watir::Browser.new
browser.goto 'https://www.upwork.com/ab/account-security/login?redir=%2Fab%2Ffind-work%2F'
browser.text_field(id: 'login_username').present?
browser.text_field(id: 'login_username').set "narco112@gmail.com"
browser.text_field(id: 'login_username').value
browser.button(id: 'login_password_continue').click
browser.button(id: 'login_password_continue').click
