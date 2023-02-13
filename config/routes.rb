Rails.application.routes.draw do
  root to: 'static_pages#accueil2'
  post "/", to: 'static_pages#mail'
  post "/", to: 'english_pages#mail'
  get "/fr/managing", to: 'static_pages#managing', as: 'managing'
  get "/fr/marketing", to: 'static_pages#marketing', as: 'marketing'
  get "/fr/branding", to: 'static_pages#branding', as: 'branding'
  get "/fr/contact", to: 'static_pages#contact', as: 'contact'
  get "/fr/presentation", to: 'static_pages#accueil', as: 'presentation'
  get "/en/managing", to: 'english_pages#managing', as: 'en_managing'
  get "/en/marketing", to: 'english_pages#marketing', as: 'en_marketing'
  get "/en/branding", to: 'english_pages#branding', as: 'en_branding'
  get "/en/contact", to: 'english_pages#contact', as: 'en_contact'
  get "/en/presentation", to: 'english_pages#accueil', as: 'en_presentation'

end
