ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'
#require  "minitest/reporters"
#Minitest::Reporters.use!

class ActiveSupport::TestCase
  # Run tests in parallel with specified workers
  parallelize(workers: :number_of_processors)

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all
  
  include ApplicationHelper

  # 如果用户已登录，返回 true
  def is_logged_in?
          !session[:user_id].nil?
  end

 #登入指定的用户<刚加的
def log_in_as(user)
    session[:user_id] = user.id
end
end

#刚加的
 class ActionDispatch::IntegrationTest
    def log_in_as(user, password: 'password', remember_me: '1')
        post login_path, params: { session: { email: user.email,
                                        password: password,
                                        remember_me: remember_me } }

    end
 end