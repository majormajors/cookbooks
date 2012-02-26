file_cache_path ENV['HOME'] + '/.chef/chef-solo'
sandbox_path ENV['HOME'] + '/.chef/sandboxes'
backup_path ENV['HOME'] + '/.chef/backups'
cache_options({ :path => ENV['HOME'] + "/.chef/cache/checksums", :skip_expires => true })
cookbook_path ENV['HOME'] + '/Projects/dev-cookbooks/cookbooks'
