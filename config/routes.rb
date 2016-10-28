Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, except: [:index, :new, :show, :edit]
  resources :locations, except: [:index, :new, :show, :edit]
  resources :squads, except: [:index, :new, :show, :edit]
  root 'welcome#index'
  post '/login' => 'users#signin'
  post '/logout' => 'users#logout'
  post '/squads/list' => 'squads#list'
end
