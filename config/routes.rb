Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    authenticated :user do
      root 'articles#index', as: :authenticated_root
      match 'users/sign_out' => "devise/sessions#destroy", via: [:get, :post]
      resources :articles
    end

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end
end
