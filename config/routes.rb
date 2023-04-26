Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })
  get("/directors", { :controller => "application", :action => "directors" })
  get("/directors/eldest", { :controller => "application", :action => "wisest" })
  get("/directors/youngest", { :controller => "application", :action => "youngest" })
  get("/directors/:an_id", { :controller => "application", :action => "director_details" })
  get("/movies", { :controller => "application", :action => "movies" })
  get("/movies/:an_id", { :controller => "application", :action => "movie_details" })
  get("/actors", { :controller => "application", :action => "actors" })
  get("/actors/:an_id", { :controller => "application", :action => "actor_details" })
end
