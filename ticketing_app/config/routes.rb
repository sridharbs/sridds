TicketingApp::Application.routes.draw do
  
  devise_for :users, :controllers => { :sessions => "users/sessions", :registrations => "users/registrations" }

  root :to => "events#index"

  resources :events do
    member do
      put :attend
      put :unattend
    end
  end
end
