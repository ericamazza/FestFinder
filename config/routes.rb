FestFinder::Application.routes.draw do
  
  get "/MyFestivals", :controller => "festivals", :action => "index"
  post "/MyFestivals", :controller => "festivals", :action => "create"
  get "/MyFestivals/new", :controller => "festivals", :action => "new"
  
  get "/MyFestivals/:id", :controller => "festivals", :action => "show"
  delete "MyFestivals/:id", :controller => "festivals", :action => "delete"
  put "/MyFestivals/:id", :controller => "festivals", :action => "update"
  get "/MyFestivals/:id/edit", :controller => "festivals", :action => "edit"

    
end
