namespace :prepare do
  desc 'Remove installed schedule.rb commands from crontab file'
  task :remove_crontab do
    on roles(:all) do |host|
      execute "cd #{release_path} && bundle exec whenever -c dryad-harvester && crontab -l"
    end
  end
end
