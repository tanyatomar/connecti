Rails.application.routes.draw do
  post 'comments/create', as: :comments
  delete 'comments/:id', to: 'comments#destroy', as: :destroy_comment
	root 'posts#home'
  get 'posts/home'
  post 'posts/create',to: 'posts#create', as: :posts
  delete 'posts/:id' ,to: 'posts#destroy', as: :destroy_post
  
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
