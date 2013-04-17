class UsersController < ApplicationController
  before_filter :authenticate_admin!
  def show
    @user = @user
    if @user
      render :json => @user.to_json(:methods => [:name, 
                                    :email,
                                    :password])
    end
  end
end  
