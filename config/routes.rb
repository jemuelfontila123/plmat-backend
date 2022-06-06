Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  #
  namespace :api do
    namespace :v1 do
      post '/auth/login', to: 'authentication#login'

      resources :users
      resources :questionnaires do
        collection do
          get 'exams'
        end
        resources :questions, shallow: true
      end

      resources :results do
        collection do
          post 'submit'
        end
      end
    end
  end
end
