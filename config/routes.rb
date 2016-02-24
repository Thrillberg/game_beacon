Rails.application.routes.draw do
  resources :users, only: [:create, :show], :defaults => { :format => "json" }
end
