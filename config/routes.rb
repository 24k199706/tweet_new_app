Rails.application.routes.draw do
  get "posts/:id/edit",to: "posts#edit"
  post "posts/:id/update",to: "posts#update"
  get "posts/new",to: "posts#new"
  get 'posts/:id',to: "posts#show"
  get 'index',to: "posts#index"
  get '/',to: "home#top"
  get "about",to: "home#about"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
