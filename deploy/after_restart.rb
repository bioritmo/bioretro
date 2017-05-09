# frozen_string_literal: true
rails_env = new_resource.environment["RAILS_ENV"]

Chef::Log.info("Migrating database for RAILS_ENV=#{rails_env}...")
execute "rake db:migrate" do
  cwd release_path
  command "bundle exec rake db:migrate"
  environment "RAILS_ENV" => rails_env
end
