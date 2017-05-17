Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

resources :events do |event|
    member do 
    	resources :participants
    end 
 end

end
