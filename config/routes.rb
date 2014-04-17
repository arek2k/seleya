Seleya::Application.routes.draw do

  devise_for :users
  devise_for :admins

  namespace :cms do
    get "/" => "index#index", :as => "index"
  end

  root "index#router"
  get '/*link', to: 'index#router'

end
