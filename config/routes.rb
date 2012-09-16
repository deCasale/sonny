Sonny::Application.routes.draw do
  devise_for :users
  
  # home
  root :to => 'home#index'
  get 'home', :to => 'home#home_page', :as => 'home_page'
end
