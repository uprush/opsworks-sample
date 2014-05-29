wpdir = "/usr/bin/"

package "mysql" do
   action :install
end

package "curl" do
   action :install
end

remote_file "#{Chef::Config[:file_cache_path]}/wp-cli.phar" do
  source "https://raw.github.com/wp-cli/builds/gh-pages/phar/wp-cli.phar"
end

execute "wp-cli install" do
   command "cp #{Chef::Config[:file_cache_path]}/wp-cli.phar #{wpdir}/wp && chmod +x #{wpdir}/wp"
   cwd "#{Chef::Config[:file_cache_path]}"
   action :run
   not_if { ::File.exists?("#{wpdir}/wp")}
end
