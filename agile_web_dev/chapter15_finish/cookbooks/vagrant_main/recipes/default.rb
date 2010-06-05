execute "update apt" do
  command "apt-get update"
  action :run
end

gem_package "rails" do
  version "2.1.1"
  action :install
end

include_recipe "mysql::client"
include_recipe "mysql::server"

