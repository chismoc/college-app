Rails.application.routes.draw do
  resources :projects
  resources :courses
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "welcome#index"

   resources :students

   namespace :admin do
    resources :students
   end
end
