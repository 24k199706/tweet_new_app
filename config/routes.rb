Rails.application.routes.draw do
  get "posts/index",to: "posts#index", as: "index"
  get "posts/new",to: "posts#new", as: "new"
  get "posts/:id",to: "posts#show",as: "show"
  post "posts/create", to:"posts#create", as:"create"
  get "posts/:id/edit",to: "posts#edit",as:"edit"
  post "posts/:id/update",to: "posts#update",as:"update" 
  root "home#top" ,as:"home"
  get "about",to: "home#about",as:"about"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
