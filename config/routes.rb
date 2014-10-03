Rails.application.routes.draw do
  
  get 'home', to: 'pages#home'
  get 'portfolio', to: 'pages#portfolio'
  get 'open_source', to: 'pages#open_source'
  get 'blog', to: 'pages#blog'
  get 'about_us', to: 'pages#about_us'
  get 'contact', to: 'pages#contact'
  post 'contact', to: 'pages#send_contact_mail'
  get 'thanks', to: 'pages#thanks'
  get 'web_design', to: 'pages#web_design'
  get 'game_development', to: 'pages#game_development'
  get 'wd_project', to: 'pages#wd_project'
  get 'pricing', to: 'pages#pricing'


  # You can have the root of your site routed with "root"
   root 'pages#home'
end