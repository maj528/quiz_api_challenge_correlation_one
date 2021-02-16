Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :candidates do 
        resources :sessions do 
          resources :submissions do
            resources :questions
        end
      end
# only methods in controller
      end
      resources :answer_options
    end
  end
end
