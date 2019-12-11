Rails.application.routes.draw do

  get 'welcome/index'
  
  root 'welcome#index'

  resources :welcome do
    collection do
      get "video", "allf9", "usage", "sitemap", "mail", "aboutus", "code", "respon", "pp"
  end end

  # devise_for :admin_users, ActiveAdmin::Devise.config
  # ActiveAdmin.routes(self)
  
  # devise_for :users, :controllers => {
  #   :sessions      => "users/sessions",
  #   :registrations => "users/registrations",
  #   :passwords     => "users/passwords"
  # }

  resources :acategories

  # resources :users do
  #   collection do
  #     get "profile", "myshop", "mywallet"
  # end end

  namespace :myashop do resources :myashops do

    member do
      get "contact", "access", "time", "info"
      get "home_edit", "img_edit", "contact_edit", "access_edit", "time_edit", "info_edit"
    end

    collection do
      get "home_new", "img_new"

end end end

namespace :myashop do resources :myashops do
                      resources :myamenucs
end end

namespace :myashop do resources :myamenucs do
                      resources :myamenus
end end

namespace :myashop do resources :myamenus do
                      resources :myfoods do
    member do
      get "foodimg"
    end
end end end

namespace :myashop do resources :myashops do
                      resources :myasmenucs
end end

namespace :myashop do resources :myasmenucs do
                      resources :myasmenus
end end

namespace :myashop do resources :myashops do
                      resources :myadmenucs
end end

namespace :myashop do resources :myadmenucs do
                      resources :myadmenus
end end

namespace :myashop do resources :myadmenus do
                      resources :mydrinks
end end

namespace :myashop do resources :myashops do
                      resources :myatmenucs
end end

namespace :myashop do resources :myatmenucs do
                      resources :myatmenus
end end

namespace :myashop do resources :myatmenus do
                      resources :myatakeouts
end end

namespace :search do resources :myasearches do

end end

  resources :info do
    collection do
      get "principle", "service", "contact", "others", "usage"
  end end

  resources :tops do
    resources :areas
  end

  resources :areas do
    resources :prefecs
  end


 resources :prefecs do 
    namespace :ashop do resources :ashops do

    member do
      get "contact", "access", "time", "info"
    end

end end end

namespace :ashop do resources :ashops do
                      resources :amenucs
end end

namespace :ashop do resources :amenucs do
                      resources :amenus
end end

namespace :ashop do resources :amenus do
                      resources :foods do
    member do
      get "foodimg"
    end
end end end

namespace :ashop do resources :ashops do
                      resources :asmenucs
end end

namespace :ashop do resources :asmenucs do
                      resources :asmenus
end end

namespace :ashop do resources :ashops do
                      resources :admenucs
end end

namespace :ashop do resources :admenucs do
                      resources :admenus
end end

namespace :ashop do resources :admenus do
                      resources :drinks
end end

namespace :ashop do resources :ashops do
                      resources :atmenucs
end end

namespace :ashop do resources :atmenucs do
                      resources :atmenus
end end

namespace :ashop do resources :atmenus do
                      resources :atakeouts
end end

namespace :asearch do resources :asshops do

  member do
      get "contact", "access", "time", "info"
    end

end end

namespace :asearch do resources :asshops do
                      resources :asmenucs
end end

namespace :asearch do resources :asmenucs do
                      resources :asmenus
end end

namespace :asearch do resources :asmenus do
                      resources :sfoods do
    member do
      get "foodimg"
    end
end end end

namespace :asearch do resources :asshops do
                      resources :assmenucs
end end

namespace :asearch do resources :assmenucs do
                      resources :assmenus
end end

namespace :asearch do resources :asshops do
                      resources :adsmenucs
end end

namespace :asearch do resources :adsmenucs do
                      resources :adsmenus
end end

namespace :asearch do resources :adsmenus do
                      resources :sdrinks
end end

namespace :asearch do resources :asshops do
                      resources :atsmenucs
end end

namespace :asearch do resources :atsmenucs do
                      resources :atsmenus
end end

namespace :asearch do resources :atsmenus do
                      resources :astakeouts
end end




Rails.application.routes.draw do
  get 'inquiry' => 'inquiry#index'              # 入力画面
  post 'inquiry/confirm' => 'inquiry#confirm'   # 確認画面
  post 'inquiry/thanks' => 'inquiry#thanks'     # 送信完了画面
end

Rails.application.routes.draw do
  get  'index' =>'messages#index'
  post 'confirm' => 'messages#confirm'
  post 'done' => 'messages#done'
end

end