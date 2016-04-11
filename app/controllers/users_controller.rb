class UsersController < ApplicationController
  def index
  	@users = User.all
  end

  def add
  	first_name = params[:first_name]
  	last_name = params[:last_name]
  	age = params[:age]
  	User.create(first_name: first_name, last_name: last_name, age: age)
  	redirect_to '/users/index'
  end

  def destroy
  	# puts User.find(params[:id]).inspect 
	
  	if userX= User.where(id: params[:id])
  	
  		userX.destroy
  	end
  	# User.find(params[:id]).delete
  	redirect_to 'users/index'
  end
end
