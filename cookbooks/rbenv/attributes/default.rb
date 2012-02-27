default['rbenv']['optional_sudo'] = 'sudo'
default['rbenv']['rubies'] = [ '1.9.2-p290', '1.9.3-p125' ]

if ENV['SHELL'] =~ /\/zsh$/
  default['rbenv']['shell_init_file'] = "#{ENV['HOME']}/.zshrc"
elsif ENV['SHELL'] =~ /\/bash$/
  default['rbenv']['shell_init_file'] = "#{ENV['HOME']}/.bashrc"
else
  # wat do
end
