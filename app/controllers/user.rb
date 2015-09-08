# SIGN IN 
post '/sign_in' do 
  user = User.find_by(email: params[:email], password: params[:password])
  
  if user.nil? 
  	redirect to('/')
  else
  	session[:user_id] = user.id
  	redirect to("/users/#{user.id}")
  end
end

# REGISTER NEW USER
post '/register' do
	user = User.find_by(email: params[:email])
	if user.nil? 
		user = User.create(name: params[:name], email: params[:email], password: params[:password])
		session[:user_id] = user.id
		redirect to("/users/#{user.id}")
	else
		if session[:user_id].nil?
			redirect to ('/')
		else
			redirect to("/users/#{user.id}")
		end
	end
end

# USER DASHBOARD
get '/users/:id' do 
	@user = User.find(session[:user_id])
	@surveys = @user.surveys
	erb :dashboard
end