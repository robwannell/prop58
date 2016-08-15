set :application, 'prop58'
set :repo_url, 'git@github.com:robwannell/prop58.git'

set :deploy_to, '/home/deploy/prop58'

set :rbenv_path, '/home/deploy/.rbenv/'

set :linked_files, %w{config/secrets.yml config/initializers/setup_mail.rb db/production.sqlite3}
set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}

namespace :deploy do

  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      execute :touch, release_path.join('tmp/restart.txt')
    end
  end

  after :publishing, 'deploy:restart'
  after :finishing, 'deploy:cleanup'
end