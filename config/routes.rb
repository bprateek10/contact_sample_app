Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  root 'contacts#new'
  get '/:locale' => 'contacts#new'
  
  match '*path' => redirect('/'), via: :get

  scope "/:locale", locale: /en|ru/ do
    resources :contacts, only: [:new, :create]
  end
end
