Seleya::Application.routes.draw do

  devise_for :users
  devise_for :admins

  root "index#index"

  namespace :cms do
    get "/" => "index#index", :as => "index"
  end

end
