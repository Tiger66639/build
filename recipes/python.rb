include_recipe "build"
include_recipe "apt"
%w(python-setuptools rubygems ruby1.8-dev python-dev).each do |i|
  package i
end

execute "fpm" do
  command "gem install fpm"
end

execute "virtualenv" do
  command "easy_install virtualenv virtualenv-tools"
end
