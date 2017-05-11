#
# Cookbook Name:: my_create_version
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#


Chef::Log.info("This is version 2")
=begin
cookbook_file '/root/config.txt' do
  source 'config.txt'
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

file '/root/config.txt' do
  content '<html><body>This is a sandeep for the home page
                 This is a raj for the home page.</body></html>'
  mode '0755'
  owner 'root'
  group 'root'
end



Chef::Log.info("my platform is #{node['platform']}")

if  node['platform'] == 'windows'
Chef::Log.info(" This is windows")
else
Chef::Log.info(" This is not a windows")
end
=end

if  node['platform'] == 'windows'
Chef::Log.info(" This is windows")
file node ['my_create_version']['windows_path_name'] do
	content '<html><body>This is a windows home page.</body></html>'
  owner 'administrator'
  group 'administrator'
end

else
Chef::Log.info(" This is not a windows")
file node ['my_create_version']['Linux_config_file'] do

content '<html><body>This is a linux home page.</body></html>'
  owner 'root'
  group 'root'
end


