set :application, "focas"
set :deploy_to, "/var/www/apps/#{application}"

role :app, "74.63.10.91"
role :web, "74.63.10.91"
role :db,  "74.63.10.91", :primary => true

default_run_options[:pty] = true
set :repository,  "git@github.com:mazembo/diela-.git"
set :scm, "git"
set :branch, "master"
set :deploy_via, :remote_cache

set :user, "root"
set :admin_runner, "root"

namespace :deploy do
  desc "Restart Application"
  task :restart, :roles => :app do
    run "touch #{current_path}/tmp/restart.txt"
  end
  desc "Start Application -- not needed for Passenger"
  task :start, :roles => :app do
    # nothing -- need to override default cap start task when using Passenger
  end
end