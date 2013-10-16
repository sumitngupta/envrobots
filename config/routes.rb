Rails.application.routes.draw do
  get 'robots.txt', to: 'envrobots/robots#index'
end