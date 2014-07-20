Rails.application.routes.draw do
  resources :test_results

  resources :test_case_steps

  resources :test_cases

  resources :projects

  get 'top/index'
  root 'top#index'

  devise_for :users, controllers: { omniauth_callbacks: 'authentication' }
  devise_scope :user do
    get 'sign_in', to: 'authentication#login', as: :new_user_session
    delete 'sign_out', to: 'authentication#logout', as: :destroy_user_session
  end
end
