Rails.application.routes.draw do
  root to: redirect('/urls')
  get 'urls' => 'urls#index'
  get ':short_url' => 'urls#short'
  post 'urls' => 'urls#create'
end
