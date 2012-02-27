git "#{ENV['HOME']}/ruby-build" do
  action :sync
  repository "https://github.com/sstephenson/ruby-build.git"
  reference "master"
end

bash "install ruby-build" do
  code <<-EOS
    cd #{ENV['HOME']}/ruby-build
    #{node['rbenv']['optional_sudo']} ./install.sh
  EOS
end
