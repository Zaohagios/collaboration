Rails.application.routes.draw do
  root'sessions#new'
  get 'boards/myboard'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  get   'assign'  => 'assignments#assign_task'
  get    'drop'    => 'assignments#drop_task'
  resources :boards, :users, :assignments, :washes, :standard_works
end
