require 'sinatra'


get '/index' do 
	erb :index
end

get '/gallery' do 
	erb :gallery
end

get '/registration' do 
	erb :registration
end

get '/contact' do 
	erb :calendar
end

get '/important' do 
	erb :calendar
end

get '/volunteer' do 
	erb :calendar
end

get '/calendar' do 
	erb :calendar
end

get '/sponsors' do 
	erb :calendar
end

def send_mail

require 'mandrill'
m = Mandrill::API.new
message = {
	:subject=> "Hello from the Mandrill API",
	:from_name=> "name",
	:text=>"message",
	:to=>[{:email=> "barb@monzodesign.com", :name=> "Barbara"}],
	:html=>"<html><h1>Hello<strong>Barbara,</strong>,<br>If you survive this WDI course, it will be a <strong>miracle</strong>!!!!!!</h1></html>",
	:from_email=>"barb@monzodesign.com"
	}
	sending = m.messages.send message
	puts sending
end