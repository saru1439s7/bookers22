Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  get "home/about" => "homes#about"
  resources:books,only:[:update,:edit,:create,:index,:show,:destroy]
  resources:users,only:[:update,:create,:index,:show,:edit]
 
end
