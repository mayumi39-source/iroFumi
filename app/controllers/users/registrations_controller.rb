class Users::RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    new_color_entry_path(date: Date.today)
  end
end