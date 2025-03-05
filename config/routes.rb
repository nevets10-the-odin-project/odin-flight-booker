Rails.application.routes.draw do
  get 'up' => 'rails/health#show', as: :rails_health_check
  get '/bookings/new', to: 'bookings#new'
  post '/bookings/create', to: 'bookings#create'
  root 'flights#index'
end
