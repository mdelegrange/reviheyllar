Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  post 'password', to: 'pages#password'
  get 'password-166C21241011', to: 'pages#password_166C21241011'
  get 'enigme1', to: 'pages#enigme1'
  post 'enigme1_attempt', to: 'pages#enigme1_attempt'
  get 'enigme2', to: 'pages#enigme2'
  post 'enigme2_attempt', to: 'pages#enigme2_attempt'
  # post 'binoclards', to: 'pages#binoclards'
  get 'enigme3', to: 'pages#enigme3'
  post 'enigme3_attempt', to: 'pages#enigme3_attempt'
  get 'enigme4', to: 'pages#enigme4'
  post 'enigme4_attempt', to: 'pages#enigme4_attempt'
  get 'enigme5', to: 'pages#enigme5'
  post 'enigme5_attempt', to: 'pages#enigme5_attempt'
  get 'bravo', to: 'pages#bravo'
end
