Rails.application.routes.draw do
  
  get 'welcome', to: 'pages#home'
  

  # You can have the root of your site routed with "root"
   root 'pages#home'
end
