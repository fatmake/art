Rails.application.routes.draw do
 

  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'artists#index'
  resources :artists, :artworks
  get "artists", to: "artists#index"

  get "artists/new", to: "artists#new" #new


  get "artists/:id/edit", to: "artists#edit", as: :artist_edit #Edit page

  patch "artists/:id/update", to: "artists#update"

  delete "artists/:id", to: "artists#destroy"

  post "artists", to: "artists#create"# cuz we're creating a new artist 
  get "artists/:id", to: "artists#show" # , as: :artist  #show


  get "artworks", to: "artworks#index"

  get "artworks/new", to: "artworks#new"

  post "artworks", to: "artworks#create"

  get "artworks/:id/edit", to: "artworks#edit", as: :artwork_edit #Edit page

  patch "artworks/:id/update", to: "artworks#update"

  delete "artworks/:id", to: "artworks#destroy"

end
