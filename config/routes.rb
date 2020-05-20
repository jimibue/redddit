Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "subs#index"

  resources :subs do
    resources :topics
  end
  # get "/subs", to: "subs#index"
  # get "/subs/:id", to: "subs#show"
  # delete "/subs/:id", to: "subs#destroy"

  delete "/sub/:id", to: "subs#destroy", as: "destroy_the_sub"

  # get "/randomthing/:subs_id", to: "subs#top_three"
end
