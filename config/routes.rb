Rails.application.routes.draw do
  resources :portfolios, except: [:show] #utworz sciezki dla wszystkich akcji z wyjatkiem show /// nastepnie odrazu definiujemy :show

  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'# ustawiamy nowa sciezke do akcji show i ustalamy jej alias, dostep poprzez portfolio_show_path
  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  resources :blogs

  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
