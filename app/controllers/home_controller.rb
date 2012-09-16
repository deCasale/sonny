class HomeController < ApplicationController
  def index
    if user_signed_in?
      redirect_to home_page_path 
    else
      render :layout => 'landing_page'
    end
  end

  def home_page
  end
end