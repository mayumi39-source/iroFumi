class PagesController < ApplicationController
  def top
    redirect_to home_path if user_signed_in?
    render layout: false
  end

  def terms
  end

  def privacy
  end
end