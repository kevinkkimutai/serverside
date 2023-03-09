require_relative "./config/environment"
 
use Rack::Cors do
    allow do
      origins '*'
      resource '*', headers: :any, methods: [:get, :post, :delete, :put, :patch, :options, :head]
    end
  end
  
  use Rack::JSONBodyParser

# Our application
use MemeController
use UsersController
run ApplicationController
