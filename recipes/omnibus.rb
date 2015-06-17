include_recipe "apt"
%w(autogen git rsync tree s3cmd).each do |i|
  package i
end

include_recipe "rbenv::default"
include_recipe "rbenv::ruby_build"

include_recipe "rbenv::rbenv_vars"
rbenv_ruby "1.9.3-p194"

rbenv_gem "bundler" do
  ruby_version "1.9.3-p194"
end
