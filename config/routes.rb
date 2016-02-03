Rails.application.routes.draw do
  resources :users, only: [:create], :defaults => { :format => "json" }
end
