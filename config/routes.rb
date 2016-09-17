Rails.application.routes.draw do
  get 'semesters/index'
  resources :semesters do
    resources :courses
  end

  root 'semesters#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
