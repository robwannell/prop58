set :stage, :production

server '104.236.137.66', user: 'deploy', roles: %w{web app db}