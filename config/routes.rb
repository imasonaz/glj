Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    authenticated :user do
      root 'articles#index', as: :authenticated_root
      match 'users/sign_out' => "devise/sessions#destroy", via: [:get, :post]
      match '/list' => "articles#list", via: [:get]
      resources :articles
      match '/test' => "articles#test", via: [:post]
      match '/updatesitemap' => "articles#sitemap", via: [:post]
    end

    unauthenticated do
      root "articles#list"
      match 'login' => 'devise/sessions#new', as: :unauthenticated_root, via: [:get]
    end
  end
end
