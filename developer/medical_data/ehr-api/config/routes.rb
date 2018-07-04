Rails.application.routes.draw do
  resources :patients do
    resources :visits
  end
end
