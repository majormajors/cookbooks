#
# Cookbook Name:: rbenv
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

git "#{ENV['HOME']}/.rbenv" do
  action :checkout
  repository "https://github.com/sstephenson/rbenv.git"
  reference "master"
end

unless open(node['rbenv']['shell_init_file']).read =~ /^\s*eval \"\$\(rbenv init/
  bash %{echo 'eval "$(rbenv init -)"' >> #{node['rbenv']['shell_init_file']}}
end
