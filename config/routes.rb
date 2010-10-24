Extract::Application.routes.draw do
  
  get '/import'  => "import#index"
  post '/import' => "import#import"
  
  resources :activities
  
  devise_for :users
  
  root :to => "application#index"
  
end
