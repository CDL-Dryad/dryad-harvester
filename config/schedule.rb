# Scheduling support, see https://github.com/javan/whenever
set :output, '/apps/dryad/apps/dryad-harvester/current/log/dryad-harvester.log'

every 5.minutes do
  # TODO: configure environment in some less-hacky way
  command "STASH_ENV=#{ENV['STASH_ENV']} /apps/dryad/apps/dryad-harvester/current/bin/harvest.sh"
end
