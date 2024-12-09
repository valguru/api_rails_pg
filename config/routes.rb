Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  scope module: 'api' do
    namespace :v1 do
      resources :applies
      resources :jobs do
        resources :applies
      end
      resources :companies do
        match 'mark_deleted', to: 'companies/mark_deleted', via: :put
        resources :jobs
      end
      match '/:id/mark_deleted', to: 'companies#mark_deleted', via: :put
      resources :geeks do
        resources :applies
      end
      #match '/:id/companies_deleted', to: 'companies#mark_deleted', via: :put
      #match '/:id/jobs_deleted', to: 'jobs#mark_deleted', via: :put
      #match '/:id/geeks_deleted', to: 'geeks#mark_deleted', via: :put
      #match '/:id/applies_deleted', to: 'applies#mark_deleted', via: :put
    end
  end
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  match "*path", to: "application#catch_404", via: :all
  # Defines the root path route ("/")
  #root "posts#index"
end

