Rails.application.routes.draw do
  devise_for :admins, skip: [:sessions]
as :admin do
  get 'admins/signin', to: 'devise/sessions#new', as: :new_admin_session
  post 'admins/signin', to: 'devise/sessions#create', as: :admin_session
  delete 'signout', to: 'devise/sessions#destroy', as: :destroy_admin_session
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

resources :events do |event|
    member do 
    	resources :participants
    end 
 end

root to: 'static#home'

end
