Rails.application.routes.draw do
    resources :inventories
    devise_for :users

    get 'welcome/index'
    root 'welcome#index'
end
