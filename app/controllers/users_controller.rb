class UsersController < ApplicationController
  skip_before_filter :require_login

  def new
    #just there to show the form
    @user = User.new
  end

  def edit
  end  

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to login_path, notice: "you have Signed up!, now please log in"
    else
      render "new"
    end
  end

private 
def user_params
  params.require(:user).permit(:name, :email, :password, :password_confirmation)
end

end









  
