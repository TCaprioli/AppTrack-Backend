Rails.application.routes.draw do
  resources :folder_items
  resources :folders
  resources :resapps
  resources :resumes
  resources :applications
  resources :users
  post '/folderItems', to: 'folder_items#create'
  get '/appmonth', to: 'users#appmonth'
  post '/signup', to: 'users#create'
  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
