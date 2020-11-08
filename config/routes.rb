Rails.application.routes.draw do
    resources :inventories
    devise_for :users

    get 'inventories/index'
    root 'inventories#index'
end
