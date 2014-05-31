wpdir = "/usr/bin/"

remote_file "#{wpdir}/wp" do
  source "https://raw.github.com/wp-cli/builds/gh-pages/phar/wp-cli.phar"
  owner "root"
  group "root"
  mode 00755
end
