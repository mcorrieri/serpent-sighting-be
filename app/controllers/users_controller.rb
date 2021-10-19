class UsersController < ApplicationController
  before_action :authorized, only: [:keep_logged_in, :update]


  def show
      @user = User.find(params[:id])
      render json: @user
  end

  def index
      @users = User.all
      render json: @users
  end

  def create 
      @user = User.new(user_params)

      if @user.valid?
          @user.save 
          render json: @user 
      else 
          render json: {error: "cannot create user"}
      end 
  end 
 
 
  def login 
      @user = User.find_by(username: params[:username])
      
      if @user && @user.authenticate(params[:password])
          
          render json: {username: @user.username, id: @user.id, token: encode_token({user_id: @user.id})}
      else 
          render json: {message: "wrong username or password"}
      end 
  end 

  def keep_logged_in
      render json: {username: @user.username, id: @user.id, token: encode_token({user_id: @user.id})}
  end


  def update
      @user.update(user_params)
      render json: @user
  end
  
  def destroy 
      @user.destroy
      render json: {message: "User is swimming with the fishes"}
  end



  private 
  def user_params
      params.permit(:username, :password)
  end
end