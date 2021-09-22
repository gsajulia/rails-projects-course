Rails.application.routes.draw do

  devise_for :users
  get 'contact', to: 'pages#contact'
  get 'about', to: 'pages#about'
  get 'error', to: 'pages#error'

  get 'blog', to: redirect("https://gsajulia.github.io/")
  resources :projects do
    resources :tasks, except: [:index], controller: 'projects/tasks'
  end
  
  root 'pages#home'

  get "*path", to: redirect("/error")
end
