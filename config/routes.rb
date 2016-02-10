Rails.application.routes.draw do
  root'sessions#new'
  get 'boards/myboard'
  get 'show_sw' => 'standard_works#show_board_sw'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  get   '/assign/:id'  => 'assignments#assign_task' , :as => :assign
  get   '/assign_show/:id'  => 'assignments#assign_show' , :as => :assign_show
  get    '/drop/:id'    => 'assignments#drop_task', :as => :drop
  post 'populate' => 'standard_works#populate'
  resources :boards, :users, :assignments, :washes, :standard_works
  #admin section
  get 'admin/boards' => 'admins#boards'
  get 'admin/show' => 'admins#show'
  get 'admin/users' => 'admins#users'
end
