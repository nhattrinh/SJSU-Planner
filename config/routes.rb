Rails.application.routes.draw do
  resources :semesters do
    resources :courses
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
