# wpdir = "/srv/www/wordpress/current"

# install git
# package 'git' do
#   action :install
# end

# download wordpress
# git "#{wpdir}/" do
#   repository "github.com/WordPress/WordPress.git"
#   revision "master"
#   action :sync
# end


wpdir = "/usr/bin/"

package 'mysql' do
  action :install
end

remote_file "#{wpdir}/wp" do
  source "https://raw.github.com/wp-cli/builds/gh-pages/phar/wp-cli.phar"
  owner "root"
  group "root"
  mode 00755
end
