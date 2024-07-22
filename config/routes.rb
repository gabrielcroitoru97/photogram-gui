Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })

  get("/users", { :controller => "users", :action => "list" })
  get("/users/:path_id", { :controller => "users", :action => "show" })
  post("/add_user", { :controller => "users", :action => "insert" })
  post("/edit_user/:path_id",{:controller => "users",:action => "edit"})

  get("/photos",{:controller => "photos",:action=>"list"})
  get("/photos/:path_id", { :controller => "photos", :action => "show" })
  post("/add_photo", { :controller => "photos", :action => "add" })
  post("/edit_photo/:path_id", { :controller => "photos", :action => "edit" })
  get("/delete_photo/:path_id", { :controller => "photos", :action => "delete" })
  post("/add_comment", { :controller => "photos", :action => "add_comment" })
  

end
