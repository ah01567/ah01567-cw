Rails.application.routes.draw do
  # adding the root, devise, GET and POST pages that will be
  # generated on the application 
  devise_for :students
  resources :departments
  resources :unis
  root 'home#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'contact', to: 'home#contact'
  post 'ask_for_contact', to: 'home#ask_for_contact'
end
