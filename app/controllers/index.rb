get '/' do
	if logged_in?
		puts "here with current user: #{current_user}"
		@location = current_user.locations
	puts "-----------"
	puts @location
		erb :index
	else
 		erb :welcome
	end
end

get '/user/new' do
	erb :sign_up
end

post '/user/new' do 
	User.create(params[:user])
	redirect '/'
end 