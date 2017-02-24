Rails.application.routes.draw do
  resources :labels, only: [:show]

  resources :topics do
 # #34
     resources :posts, except: [:index]

   end
   
      resources :users, only: [:new, :create]
      resources :sessions, only: [:new, :create, :destroy]
 
 # #4
   resources :posts, only: [] do
 # #5
     resources :comments, only: [:create, :destroy]
   end
   
  get 'about' => 'welcome#about'
  
  root to: 'welcome#index'
  
end
