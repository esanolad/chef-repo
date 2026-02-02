#
# Cookbook:: motd
# Recipe:: default
#
# Copyright:: 2026, The Authors, All Rights Reserved.
cookbook_file '/etc/motd' do
  source 'motd'
  owner 'root'
  group 'root'
  mode '0644'
  action :create
end
