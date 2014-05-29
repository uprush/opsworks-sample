wpdir = "/usr/bin/"

package "mysql" do
   action :install
end

package "curl" do
   action :install
end

remote_file "#{wpdir}/wp" do
  source "https://raw.github.com/wp-cli/builds/gh-pages/phar/wp-cli.phar"
  owner "root"
  group "root"
  mode 00644
end
