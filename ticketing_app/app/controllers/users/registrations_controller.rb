class Users::RegistrationsController < Devise::RegistrationsController
  def new
    @menu = :register
    build_resource({})
    respond_with self.resource
  end
end