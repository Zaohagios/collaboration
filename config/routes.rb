Rails.application.routes.draw do
  root'sessions#new'
  get 'boards/myboard'
  get 'show_sw' => 'standard_works#show_board_sw'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  get   'assign'  => 'assignments#assign_task'
  get   'assign_show'  => 'assignments#assign_show'
  get    'drop'    => 'assignments#drop_task'
  post 'populate' => 'standard_works#populate'
  resources :boards, :users, :assignments, :washes, :standard_works
end
