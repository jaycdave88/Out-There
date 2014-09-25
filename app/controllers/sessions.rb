post '/sessions/new' do
	user = User.find_by(name: params[:name])
		if user.password == params[:password]
			session[:user_id] = user.id
		end
		redirect '/'
end