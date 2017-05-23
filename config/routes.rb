Rails.application.routes.draw do
  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

resources :events do |event|
    member do 
    	resources :participants
    end 
 end

root to: "events#index"

end
