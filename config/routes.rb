HackerNews::Application.routes.draw do

  resources :users


  resources :links, :comments
  get '/', :controller => 'links', :action => 'index'

end
