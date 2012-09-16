class HomeController < ApplicationController
  def index
    redirect_to home_page_path if user_signed_in?
  end

  def home_page
    
  end
end