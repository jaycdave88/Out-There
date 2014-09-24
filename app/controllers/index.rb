get '/' do
	erb :index
end

post '/user/create' do
	user_create = User.create(user_info:params[:first_name,:last_name,:password])
end