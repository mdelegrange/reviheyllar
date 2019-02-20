Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  post 'password', to: 'pages#password'
  get 'password-166C21241011', to: 'pages#password_166C21241011'
  get 'enigme1', to: 'pages#enigme1'
  post 'enigme1', to: 'pages#enigme1'
  get 'binoclards', to: 'pages#binoclards'
  post 'binoclards', to: 'pages#binoclards'
  get 'homme', to: 'pages#homme'
  post 'homme', to: 'pages#homme'
  get 'prenom', to: 'pages#prenom'
  post 'prenom', to: 'pages#prenom'
  get 'chapeau', to: 'pages#chapeau'
  post 'chapeau', to: 'pages#chapeau'
  get 'bravo', to: 'pages#bravo'
end
