Rails.application.routes.draw do
     
  devise_for :users
#   devise_scope :user do get "/users/sign_in" => "devise/sessions#new"
# end
  # root 'devise/sessions#new'
  root 'units#index'
  get 'units/group/:id' => 'units#group', as: :units_group
  get 'units/search' => 'units#search', as: :units_search
  get 'units/complite/:id' => 'units#complite', as: :units_complite
  get 'authors/department/:id' => 'authors#department', as: :authors_department
  
  resources :authors, :users, :units, except: [:destroy]
  resources :temp_tasks, :departments, only: [:new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
