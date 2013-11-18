Spree::Core::Engine.routes.draw do
  get "/user/spree_user/person_detail" => "users#add_person_detail"
  post "/user/spree_user/person_detail" => "users#update_person_detail"
end
