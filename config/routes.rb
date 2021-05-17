Rails.application.routes.draw do
  # HTTP_VERB '/path', to: 'controller#action', as: :prefix
  # get '/'
  root to: 'flats#index'
  get '/flats/:id', to: 'flats#show', as: :flat
end

# READ
# index -> all
# show -> one
