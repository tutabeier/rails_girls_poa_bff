Rails.application.routes.draw do
  resources :agendas
  resources :extras
  resources :locations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
