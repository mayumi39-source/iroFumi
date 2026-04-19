class Users::PasswordsController < Devise::PasswordsController
  def create
    super do |resource|
      if resource.errors.empty?
        flash[:notice] = "パスワードの再設定について数分以内にメールでご連絡いたします。"
      end
    end
  end
end