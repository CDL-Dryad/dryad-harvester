# Load DSL and set up stages
require 'capistrano/setup'

# Include default deployment tasks
require 'capistrano/deploy'

# Bundler support, see https://github.com/capistrano/bundler
require 'capistrano/bundler'

# STASH_ENV
set :stash_env, fetch(:stage, 'development')

# Load custom tasks from `lib/capistrano/tasks` if you have any defined
Dir.glob('lib/capistrano/tasks/*.rake').each { |r| import r }
