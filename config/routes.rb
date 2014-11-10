Rails.application.routes.draw do
  
  resources :curriculums

  resources :cvs

  get 'home', to: 'pages#home'
  get 'portfolio', to: 'pages#portfolio'
  get 'open_source', to: 'pages#open_source'
  get 'blog', to: 'pages#blog'
 
  get 'contact', to: 'pages#contact'
  post 'contact', to: 'pages#send_contact_mail'
  get 'thanks', to: 'pages#thanks'
  get 'web_design', to: 'pages#web_design'
  get 'game_development', to: 'pages#game_development'
  get 'wd_project', to: 'pages#wd_project'
  get 'pricing', to: 'pages#pricing'
  get 'post', to: 'pages#blog'
  get 'pipecvs', to: 'pages#cvs_page'
  
  get 'curriculums', to: 'curriculums#index'


  # You can have the root of your site routed with "root"
   root 'pages#home'
end