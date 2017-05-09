# frozen_string_literal: true
Chef::Log.info("Running deploy/before_migrate.rb...")

rails_env = new_resource.environment["RAILS_ENV"]

Chef::Log.info("Mapping environment_variables node for RAILS_ENV=#{rails_env}")
node[:deploy].each do |_application, deploy|
  deploy[:environment_variables].each do |key, value|
    ENV[key] = value
  end
end

Chef::Log.info("Precompiling assets for RAILS_ENV=#{rails_env}...")
execute "rake assets:precompile" do
  cwd release_path
  command "bundle exec rake assets:precompile"
  environment "RAILS_ENV" => rails_env
end
