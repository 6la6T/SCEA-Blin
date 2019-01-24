Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root 'page#home'
    get 'distributeur', to: 'page#distributeur'
    get 'btob', to: 'page#btob'
    get 'entreprise', to: 'page#entreprise'
    get 'contact', to: 'contacts#new'
    resources "contacts", only: [:new, :create]
end
