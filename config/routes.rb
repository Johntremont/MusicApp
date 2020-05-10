Rails.application.routes.draw do
  get 'spotify/search'
  resources :tracks
  resources :playlists
end
