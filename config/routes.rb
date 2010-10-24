ActionController::Routing::Routes.draw do |map|
  map.resources :outcomes

  map.root :controller => :play

end
