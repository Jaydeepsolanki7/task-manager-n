Rails.application.routes.draw do
  resource :session
  resources :passwords, param: :token
  resources :tasks
  get "/todo", to: "tasks#todo_tasks", as: "todo_tasks"
  get "/in_progress", to: "tasks#in_progress_tasks", as: "in_progress_tasks"
  get "/done", to: "tasks#done_tasks", as: "done_tasks"
  root "tasks#index"
end
