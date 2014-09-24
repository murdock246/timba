Rails.application.routes.draw do
  
  get 'welcome', to: 'pages#home'
  get 'about', to: 'welcome#about_us'
  get 'whatwedo', to: 'welcome#we_do'
  get 'portafolio', to: 'welcome#porfolio'
  get 'opensource', to: 'welcome#open_source'
  


  # You can have the root of your site routed with "root"
   root 'pages#home'
end
