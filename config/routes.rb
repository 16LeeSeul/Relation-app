Rails.application.routes.draw do
  
  # follow
  
  
  # comment
  resources :comments, only: [:create, :destroy]
  
  # participate
  resources :participates, only: [:new, :create, :edit, :update, :destroy]

  # Jukebox
  get 'jukebox', to: 'jukebox#index'

  # song
  resources :songs
  post '/songs/:id/follow', to: 'follows#song_follow_toggle', as: 'song_follow' # song과 관련된 follow
  
  # artist
  resources :artists
  post '/artists/:id/follow', to: 'follows#artist_follow_toggle', as: 'artist_follow' # artist와 관련된 follow
  
  # user
  devise_for :users
  
  
  # like
  post '/articles/:id/like', to: 'likes#like_toggle', as: 'like_article'

  # article
  root to: 'articles#index' # rails g devise:install로 설명 보기
  resources :articles
  
  # profile
  get '/my_profile' => 'profiles#show'
          # , to: == =>
  get '/new_profile', to: 'profiles#new'
  get '/create_profile', to: 'profiles#new'
  post '/create_profile', to:'profiles#create'
  get '/edit_profile', to: 'profiles#edit'
  get '/update_profile', to: 'profiles#edit' #새로고침했을 때 오류안나게하려고
  patch '/update_profile', to: 'profiles#update'

end
