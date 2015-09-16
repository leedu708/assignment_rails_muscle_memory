Rails.application.routes.draw do
  root "articles#new"
  resources :articles, :only => [:new, :create, :show, :index]
end
