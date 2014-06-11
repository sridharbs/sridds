class Users::SessionsController < Devise::SessionsController
  def new
    @menu = :login
  end
end