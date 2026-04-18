class ApplicationController < ActionController::Base
  def after_sign_up_path_for(resource)
    new_color_entry_path(date: Date.today)
  end

  def after_sign_in_path_for(resource)
    home_path
  end
end