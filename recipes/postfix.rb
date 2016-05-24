# Cookbook Name:: mailserver
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

remote_file '/tmp/rpmforge-release-0.5.3-1.el6.rf.x86_64.rpm' do
  source 'http://pkgs.repoforge.org/rpmforge-release/rpmforge-release-0.5.3-1.el6.rf.x86_64.rpm'
  action :create
end

package '/tmp/rpmforge-release-0.5.3-1.el6.rf.x86_64.rpm' do
  action :install
end

package node['mailserver']['postfix']['packages'] do
  action :install
end
