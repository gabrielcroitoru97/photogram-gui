Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })

  get("/users", { :controller => "users", :action => "list" })
  get("/users", { :controller => "users", :action => "show" })
end
