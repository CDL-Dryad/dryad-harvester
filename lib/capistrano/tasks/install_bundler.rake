namespace :install do
  desc 'Install/update bundler'
  task :bundler do
    on roles(:all) do |host|
      if test('which bundle')
        info "Bundler is already installed on #{host}"
        execute "sh -c 'gem update \"^bundler$\"'"
      else
        execute 'sh -c "gem install bundler"'
      end
    end
  end
end