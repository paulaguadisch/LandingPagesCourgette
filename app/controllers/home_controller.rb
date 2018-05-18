class HomeController < ApplicationController

attr_accessor :user	

  def index
  	@user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.save

    if ContactMailer.contact(@user).deliver_now
  		redirect_to root_path
  	else
  		redirect_to root_path
  	end
  end

  def lp1
    @user = User.new
  end

  def lp2
    @user = User.new
  end

  def lp3
    @user = User.new
  end

  private

  def user_params
    params.require(:user).permit(:email)
  end

end
