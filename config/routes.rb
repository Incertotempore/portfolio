Rails.application.routes.draw do
  get 'about', to: 'pages#about', as: :about
  get 'my_works', to: 'pages#my_works', as: :my_works
  get 'contact', to: 'pages#contact', as: :contact

  resources "contacts", only: [:new, :create]

  root to: 'pages#home'
  # get 'pages/contact'
  # get 'pages/about'
  # get 'pages/my_works'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
