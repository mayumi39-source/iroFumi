class Users::PasswordsController < Devise::PasswordsController
  def create
    self.resource = resource_class.send_reset_password_instructions(resource_params)
    yield resource if block_given?

    if successfully_sent?(resource)
      redirect_to new_user_session_path(notice: "パスワードの再設定について数分以内にメールでご連絡いたします。")
    else
      respond_with(resource)
    end
  end
end