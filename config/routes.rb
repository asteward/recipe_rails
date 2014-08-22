Rails.application.routes.draw do
  match('/recipes', {via: :get, to: 'recipes#index'})
  match('/recipes', {via: :post, to: 'recipes#new'})
  match('/recipes/:id', {via: :get, to: 'recipes#show'})
end
