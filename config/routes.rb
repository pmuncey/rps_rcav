Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get("/", "/rock", { :controller => "games", :action => "play_rock"})
  get("/scissors", { :controller => "games", :action => "play_scissors"})
  get("/paper", { :controller => "games", :action => "play_paper"}) # games = class, play_rock = method
end



#route controller action view = rcav
