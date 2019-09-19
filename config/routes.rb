Rails.application.routes.draw do
  resources :site_map_nodes
  get '*path', to: 'site_map_nodes#index'
  root 'site_map_nodes#index'
end
