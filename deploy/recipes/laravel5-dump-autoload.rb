#
# Cookbook Name:: deploy
# Recipe:: laravel5-dump-autoload.rb
#

node[:deploy].each do |app_name, deploy|

  # Execute `dump-autoload`.
  execute "composer" do
    command <<-EOH
      composer dump-autoload --optimize-autoloader
    EOH
  end
end
