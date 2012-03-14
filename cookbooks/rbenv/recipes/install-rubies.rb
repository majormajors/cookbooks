node['rbenv']['rubies'].each do |ruby|
  unless File.directory? "#{ENV['HOME']}/.rbenv/versions/#{ruby}"
    bash "install ruby: #{ruby}" do
      code "rbenv install #{ruby}"
    end
  else
    Chef::Log.info "Ruby '#{ruby}' already installed; skipping"
  end
end

file "#{ENV['HOME']}/.rbenv/version" do
  action :create_if_missing
  mode "0644"
  content node['rbenv']['default_ruby'] || node['rbenv']['rubies'].first
end

gem_package "bundler"
bash "rbenv rehash"
