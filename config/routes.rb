Rails.application.routes.draw do
  get 'new/place'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # get("/", { :controller => "articles", :action => "index" })
  resources "places"
  resources "newplace"
end
