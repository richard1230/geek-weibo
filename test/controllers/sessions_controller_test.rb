# class SessionsController < ApplicationController
#   def new
#   end


#   def create
#       user = User.find_by(email: params[:session][:email].downcase)
#       #if user  && user.authenticate(params[:session][:password])
#       if user &. authenticate(params[:session][:password])
#               log_in user
#           redirect_to user
#       else
#               flash.now[:danger] = 'Invalid email/password combination' 
#         render 'new'
#       end
#   end


#   def destroy
#   end
# end

require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get login_path
    assert_response :success
  end

end