Comicbin::Application.routes.draw do

  # Set up index and root pages
  root "comicbin#index"
  get "/comicbin" => 'comicbin#index'

  # --------------------
  get "/comicbin/new" => 'comicbin#new'
  get "/comicbin/delete/:comic_id" => 'comicbin#delete' #was toast
  get "/comicbin/create" => 'comicbin#create'

  # --------------------
  # Must be the at the bottom - o/w will hit this instead of the above
  get "/comicbin/:comic_id" => 'comicbin#show'
 
end
