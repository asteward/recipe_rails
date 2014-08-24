Rails.application.routes.draw do
  match('/recipes', {via: :get, to: 'recipes#index'})
  match('/recipes', {via: :post, to: 'recipes#create'})
  match('/recipes/:id', {via: :get, to: 'recipes#show'})
  match('/recipes/:id/edit', {via: :get, to: 'recipes#edit'})
  match('/recipes/:id', {via: [:patch, :put], to: 'recipes#update'})
  match('/recipes/:id', {via: :delete, to: 'recipes#destroy'})
  match('/tags', {via: :get, to: 'tags#index'})
  match('/tags', {via: :post, to: 'tags#create'})
  match('/tags/:id', {via: :get, to: 'tags#show'})
  match('/tags/:id', {via: :delete, to: 'tags#destroy'})
  match('/recipes_tags', {via: :get, to: 'recipes_tags#index'})
  match('/recipes_tags', {via: :post, to: 'recipes_tags#create'})
end
