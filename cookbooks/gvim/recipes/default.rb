#
# Cookbook Name:: gvim
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package node['gvim']['package_name'] do
  action :install
end

git "#{ENV['HOME']}/.vim" do
  action :checkout
  repository "https://github.com/majormajors/vimfiles.git"
  reference "master"
  enable_submodules true
end

link "#{ENV['HOME']}/.vimrc" do
  to "#{ENV['HOME']}/.vim/vimrc"
end
