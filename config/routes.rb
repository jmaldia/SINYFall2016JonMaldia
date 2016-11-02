Rails.application.routes.draw do
  devise_for :owners
  root 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  devise_scope :owner do
    get 'owners/sign_out' => "devise/sessions#destroy"
  end
end
