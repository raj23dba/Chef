#
# Cookbook Name:: template_cookbook1
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
template '/root/config' do
  source 'config.erb'
  mode '0440'
  owner 'root'
  group 'root'
  variables({
    connectionTimeout: node['template_cookbook1']['connectionTimeout'],
    redirectPort: node['template_cookbook1']['redirectPort']  
  })
end