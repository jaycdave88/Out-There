get '/' do
	if logged_in?
		puts "here with current user: #{current_user}"
		@location = current_user.locations
	puts "-----------"
	puts @location
 		erb :welcome
	else
		erb :index
	end
end

get '/user/sign' do
	erb :sign_up
end
# registration change tom.

post '/user/new' do 
	User.create(params[:user])
	redirect '/'
end 

post '/user/login' do
	user = User.find_by(email: params[:email])
	if user.password == params[:password]
			session[:user_id] = user.id
		end
	redirect '/'
end



