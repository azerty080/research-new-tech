Rails.application.routes.draw do
  get 'welcome' => 'welcome#index'
  get 'home/index'
  
  root 'home#index'
end
