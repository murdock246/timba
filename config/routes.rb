Rails.application.routes.draw do
  
  get 'home', to: 'pages#home'
  get 'portfolio', to: 'pages#portfolio'
  get 'blog', to: 'pages#blog'
  get 'contact', to: 'pages#contact'
  post 'contact', to: 'pages#send_contact_mail'


  # You can have the root of your site routed with "root"
   root 'pages#home'
end
