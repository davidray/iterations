ActionController::Routing::Routes.draw do |map|
  map.resources :outcomes
  map.resources :play, :collection => {:work_on_a_story => :get}
  map.root :controller => :play
  
end
