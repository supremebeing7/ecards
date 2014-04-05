Ecard::Application.routes.draw do
  match('/', {:via => :get, :to => 'cards#index'})

  resources :cards
  # match('cards', {:via => :get, :to => 'cards#index'})
  # match('cards/new', {:via => :get, :to => 'cards#new'})
  # match('cards', {:via => :post, :to => 'cards#create'})
  # match('cards/:slug', {:via => :get, :to => 'cards#show'})
  # match('cards/:slug/edit', {:via => :get, :to => 'cards#edit'})
  # match('cards/:slug', {:via => [:patch, :put], :to => 'cards#update'})
  # match('cards/:slug', {:via => :delete, :to => 'cards#destroy'})
  # match('mailouts', {:via => :post, :to => 'mailouts#create'})

end
