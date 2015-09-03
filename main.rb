
require 'mandrill'
m = Mandrill::API.new
message = {
	:subject=> "Hello from the Mandrill API",
	:from_name=> "Barbara Monzo",
	:text=>"Hi message, how are you?",
	:to=>[{:email=> "barb@monzodesign.com", :name=> "Barbara"}],
	:html=>"<html><h1>Hello<strong>Barbara,</strong>,<br>If you survive this WDI course, it will be a <strong>miracle</strong>!!!!!!</h1></html>",
	:from_email=>"barb@monzodesign.com"
	}
	sending = m.messages.send message
	puts sending