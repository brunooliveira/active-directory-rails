Rails.application.routes.draw do
  get 'home', to: 'static_pages#home'

  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  devise_scope :user do
    root to: 'users/sessions#new'
    get 'sign_in', to: 'users/sessions#new'
    get '/users/sign_out', to: 'users/sessions#destroy'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
