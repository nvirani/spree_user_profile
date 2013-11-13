Spree::Core::Engine.routes.draw do
  get "/user/spree_user/user_profile" => "users#method1"
  post "/user/spree_user/user_profile" => "users#method2"
end
