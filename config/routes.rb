DiscourseDonations::Engine.routes.draw do
  get '/' => 'charges#index'

  resources :charges, only: [:index, :create]
  put '/charges/cancel-subscription' => 'charges#cancel_subscription'
end
