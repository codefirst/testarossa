Rails.application.routes.draw do

  resources :projects do
    resources :test_cases, path: 'tests' do
      resources :test_case_steps, path: 'steps'
      resources :test_results, path: 'results' do
        resources :test_case_step_results, path: 'steps'
      end
    end
  end

  get 'top/index'
  root 'top#index'

  devise_for :users, controllers: { omniauth_callbacks: 'authentication' }
  devise_scope :user do
    get 'sign_in', to: 'authentication#login', as: :new_user_session
    delete 'sign_out', to: 'authentication#logout', as: :destroy_user_session
  end
end
