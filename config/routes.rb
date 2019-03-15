Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'invoices/:id', to: 'invoices#show'
  get 'invoices', to: 'invoices#index'
end
