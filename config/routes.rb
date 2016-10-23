Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :grades
  resources :courses
  resources :semesters
  resources :students
  resources :users
  resources :course_prereqs
end
