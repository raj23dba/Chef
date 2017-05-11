#
# Cookbook Name:: my_first_oracle_cookbook
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
=begin

remote_file 'c:/chef/Git-2.12.2.2-64-bit.exe' do
 source 'https://github.com/git-for-windows/git/releases/download/v2.12.2.windows.2/Git-2.12.2.2-64-bit.exe'
 action :create
 not_if { File.exists?('c:/chef/Git-2.12.2.2-64-bit.exe') }
end
execute 'install_git' do
 command 'c:/chef/Git-2.12.2.2-64-bit.exe /SILENT'
 not_if { File.exists?('c:/chef/Git-2.12.2.2-64-bit.exe')}
end
=end
Chef::Log.info("my attributes is #{node['my_second_cookbook']['testvalue']}")
Chef::Log.info("my attributes is #{node['my_second_cookbook']['git_installer_name']}")
Chef::Log.info("my attributes is #{node['my_second_cookbook']['git_path_name']}")
Chef::Log.info("my attributes is #{node['my_second_cookbook']['git_source_url']}")

remote_file node['my_second_cookbook']['git_path_name'] do
 source node['my_second_cookbook']['git_source_url']
 action :create
 not_if { File.exists?( node['my_second_cookbook']['git_path_name']) }
 end