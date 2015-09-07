require 'sinatra'

	get '/' do 
		erb :index
	end

	get '/volunteer.erb' do 
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

	get '/important.erb' do 
		erb :important
	end

	get '/index' do 
		erb :index
	end

	get '/register' do 
		erb :register

	get '/sponsors' do 
		erb :sponsors
	end

	
end