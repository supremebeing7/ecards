Ecard::Application.routes.draw do
  match('/', {:via => :get, :to => 'cards#index'})
  match('cards', {:via => :get, :to => 'cards#index'})
  match('cards/new', {:via => :get, :to => 'cards#new'})
  match('cards', {:via => :post, :to => 'cards#create'})
  match('cards/:slug', {:via => :get, :to => 'cards#show'})
  match('cards/:id/edit', {:via => :get, :to => 'cards#edit'})
  match('cards/:id', {:via => [:patch, :put], :to => 'cards#update'})
  match('cards/:id', {:via => :delete, :to => 'cards#destroy'})
end
