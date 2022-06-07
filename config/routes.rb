Rails.application.routes.draw do
    devise_for :customers,skip: [:passwords], controllers: {
      registrations: "public/registrations",
      seessions: 'public/sessions'
    }
    
    
    devise_for :admins,skip: [:registrations, :passwords], controllers: {
      sessions: "admin/session"
    }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
