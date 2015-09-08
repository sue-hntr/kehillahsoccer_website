require 'sinatra'

	get '/' do 
		erb :index
	end

	get '/volunteer' do 
		erb :volunteer
	end

	get '/calendar' do 
		erb :calendar
	end

	get '/contact' do 
		erb :contact
	end

	get '/gallery' do 
		erb :gallery
	end

	get '/important' do 
		erb :important
	end

	get '/index' do 
		erb :index
	end

	get '/register' do 
		erb :register
	end

	get '/sponsors' do 
		erb :sponsors
	end

	
# This code is saying "GET to this location on my server and DO the following... load the form from the form.erb file."

get '/' do 
	erb :volunteer
end


# This code is saying "the content that gets POSTed to this form should DO the following... capture info in the forms indicated in the fields below... send email This will inspect the parameters from my form. 

post "/volunteer" do
	puts params.inspect
	name = params["name"]
	email = params["email"]
	message = params["text"]
	# coach = params["coach"]
	send_email(name, email, message)
end

# the actual email content details here. We're using Mandrill required code.

def send_email(name, email, message)

	require 'mandrill'
	m = Mandrill::API.new
	message = {
		:subject=> "Kehillah Soccer Inquiry...",
		:from_name=> name,
		:text=> message,
		:to=>[{:email=> "bmonzo@gmail.com", :name=> "Barbara"}],
		:from_email=> email
	}
	sending = m.messages.send message
	puts sending
end