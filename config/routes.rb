Rails.application.routes.draw do
  root to: 'questions#index'
  # root to: 'visitors#index'
  resources :questions
end
