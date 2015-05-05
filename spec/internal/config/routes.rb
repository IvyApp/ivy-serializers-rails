Rails.application.routes.draw do
  resources :posts do
    collection do
      get :index_json_api
    end

    member do
      get :show_json_api
    end
  end
end
