Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do

      resources :monthlies, only: [:index, :create, :show, :update]
      resources :dailies, only: [:index, :create, :show, :update]
      resources :hourlies, only: [:index, :create, :show, :update]
      resources :stations, only: [:index, :create, :show, :update]

      get '/monthlies/:wban', to: 'stations#show'
      get '/dailies/:wban', to: 'stations#show'
      get '/hourlies/:wban', to: 'stations#show'
      get '/stations/:wban', to: 'stations#show'

      get	'/hourlies/:wban/:year_month_day', to: 'hourlies#station'
      get	'/dailies/:wban/:year_month_day', to: 'dailies#station'
      get	'/monthlies/:wban/:year_month', to: 'monthlies#station'

      # get	'/hourlies/:wban/:year_month_day', to: 'hourlies#station'
      get	'/dailies/:wban/:year_month_day/adjacent', to: 'dailies#station_adjacent'
      # get	'/monthlies/:wban/:year_month', to: 'monthlies#station'
      get	'/dailies/:wban/:year_month_day/historical', to: 'dailies#station_historical'

    end
  end

end
