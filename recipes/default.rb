#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

package "apache2" do
  action :install
end

service "apache2" do
  action [:enable, :start]
end

template "var/www/html/index.html" do
  source 'index.html.erb'
  action :create
end	
