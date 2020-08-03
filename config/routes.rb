Rails.application.routes.draw do
  # HTTP_VERB '/path', to: 'controller#action' as: :prefix
  root to: 'pages#home' # when no path, go here
  get '/about', to: 'pages#about'
  get '/contact', to: 'pages#contact'
end


# everything starts with an HTTP request
'localhost:3000/about'

# /about is our PATH

# when /about comes in, i want to go to a controller#action
