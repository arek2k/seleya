Seleya::Application.routes.draw do

  devise_for :users
  root "cms/index#index"

  namespace :cms do
        get "/" => "index#index", :as => "index"
  end

end
