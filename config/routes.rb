Rails.application.routes.draw do
  
  resources :posts, only: [:index, :show]
  
  root "posts#index"

  get "about", to: "pages#about"

  get "contact", to: "pages#contact"

end
