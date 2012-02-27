node['rbenv']['rubies'].each do |ruby|
  unless File.directory? "#{ENV['HOME']}/.rbenv/versions/#{ruby}"
    bash "install ruby: #{ruby}" do
      code "rbenv install #{ruby}"
    end
  else
    Chef::Log.info "Ruby '#{ruby}' already installed; skipping"
  end
end

bash "setting default ruby: #{node['rbenv']['rubies'].first}" do
  code "rbenv global #{node['rbenv']['rubies'].first}"
end
