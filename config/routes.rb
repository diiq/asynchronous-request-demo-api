Rails.application.routes.draw do
  resources :test_scores
  resources :students do 
    get 'test_scores', to: 'test_scores#index'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
