Rails.application.routes.draw do
  root to: redirect('/urls')
  get 'urls' => 'urls#index'
end
