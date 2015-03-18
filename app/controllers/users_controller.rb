class UsersController < ApplicationController
  def new
    #just there to show the form
    @user = User.new
  end

  def edit
  end  

  def create
    #accepts the form submission
    #probably redirects somewhere else (redirect_to root_path, message success?)
  end
end
  
