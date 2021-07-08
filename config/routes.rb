Rails.application.routes.draw do
  # VERB URL/PATH, to: "controller_name#action", as: :nickname
  # get "/", to: "flats#index"
  root to: "flats#index"
  get "flats/:id", to: "flats#show",as: :flat
end
