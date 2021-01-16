Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/loop-docs'
  mount Rswag::Api::Engine => '/loop-docs'
  devise_for :admins
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  scope '/api' do
    use_doorkeeper

    devise_for :users, controllers: { registrations: 'api/users/registrations' }
    
    resource :profile
  end
end
