Rails.application.routes.draw do
  get 'up' => 'rails/health#show', as: :rails_health_check
  resources :bookings, only: %i[new create show]
  root 'flights#index'
end
