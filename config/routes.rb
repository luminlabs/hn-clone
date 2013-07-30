HackerNews::Application.routes.draw do

  resources :links
  get '/', :controller => 'links', :action => 'index'

end
