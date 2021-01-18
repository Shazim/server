Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/docs'
  mount Rswag::Api::Engine => '/docs'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  scope 'api' do
    use_doorkeeper
  end

  scope module: :api, path: 'api' do
    devise_for :users, controllers: { registrations: 'api/users/registrations' }
  end
end
