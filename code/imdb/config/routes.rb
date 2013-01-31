Imdb::Application.routes.draw do

  get "/directors/new" => 'directors#new', :as => 'new_director'

  get "/directors" => 'directors#index', :as => 'directors'
  get "/directors/:id" => 'directors#show', :as => 'director'
  post "/directors" => 'directors#create', :as => 'directors'

end
