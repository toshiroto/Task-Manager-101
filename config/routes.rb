Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # READ ALL
  # List all the tasks
  get "/tasks", to: "tasks#index", as: :tasks
  # CREATE
  # display the Task form
  get "tasks/new", to: "tasks#new"
  # CREATE - STEP 2
  # to handle the POST request generated when submitting this form.
  post "tasks", to: "tasks#create"
  # READ ONE
  # find a specific task, thanks to its id, directly from params.
  get "tasks/:id", to: "tasks#show", as: :task
  # UPDATE
  # edit a task, changing its title, its details and especially marking it as completed.
  get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  patch "tasks/:id", to: "tasks#update"
  # DELETE
  delete "tasks/:id", to: "tasks#destroy"
end
