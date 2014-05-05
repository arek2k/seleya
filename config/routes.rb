Seleya::Application.routes.draw do


  devise_for :users, class_name: 'Cms::User'
  namespace :cms do
    get '/' => 'index#index', :as => 'index'
    resources :page
  end

  root 'index#index'
  get '/*link', to: 'index#index'

end
