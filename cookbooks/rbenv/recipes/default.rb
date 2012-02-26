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
