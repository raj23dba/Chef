#
# Cookbook Name:: template_cookbook
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
service "ssh" do
	action :nothing
end
template '/root/sudors' do
  source 'sudors.erb'
  mode '0440'
  owner 'root'
  group 'root'
  variables({
    sudoers_groups: node['template_cookbook']['sudo']['groups'],
    sudoers_users: node['template_cookbook']['sudo']['users'],
    passwordless: node['template_cookbook']['password']
  })
  notifies :start, 'service[ssh]', :immediate
end