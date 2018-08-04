# config valid only for current version of Capistrano
# lock '3.4.0'

set :application, 'dryad-harvester'
set :repo_url, 'git@github.com:CDL-Dryad/dryad-harvester.git'
set :deploy_to, '/apps/dryad/apps/dryad-harvester'

# Default value for linked_dirs is []
# set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system')

set :linked_dirs, fetch(:linked_dirs, []).push('log', 'db')

# Default value for default_env is {}
# set :default_env, { path: "/dryad/apps/dryad-harvester/bin:$PATH" }

namespace :deploy do

end
