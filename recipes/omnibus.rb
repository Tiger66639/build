include_recipe "build"
include_recipe "rbenv::default"
include_recipe "rbenv::ruby_build"

include_recipe "rbenv::rbenv_vars"
rbenv_ruby "1.9.3-p194" do
  global true
end

rbenv_gem "bundler" do
  ruby_version "1.9.3-p194"
end

include_recipe "omnibus"
