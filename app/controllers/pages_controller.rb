class PagesController < ApplicationController
  def top
    if user_signed_in?
      redirect_to home_path
    else
      render layout: false
    end
  end

  def terms
  end

  def privacy
  end
end