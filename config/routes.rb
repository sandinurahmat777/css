WorldCupApp::Application.routes.draw do
  root 'nations#index'
  devise_for :users

  resources :nations, :players, :coaches, :referees, :stadiums, :groups, :matches
  get '/matches/:id/edit_score', to: 'matches#edit_score'
  get '/matches/:id/update_score', to: 'matches#update_score'

  get '/groups/:id/assign_nations', to: 'groups#assign_nation'
end  
  
