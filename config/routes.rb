Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  post 'password', to: 'pages#password'
  get 'password-166C21241011', to: 'pages#password_166C21241011'
  get 'enigme1', to: 'pages#enigme1'
end
