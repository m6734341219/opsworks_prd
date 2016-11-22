#
# Cookbook Name:: deploy
# Recipe:: laravel5-dump-autoload
#

node[:deploy].each do |app_name, deploy|

  # Execute `dump-autoload`.
  execute "composer" do
    command <<-EOH
      composer dump-autoload -d #{deploy[:deploy_to]}/current --optimize-autoloader
    EOH
  end
end
