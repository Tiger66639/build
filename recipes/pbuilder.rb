include_recipe 'build'

execute "pbuilder" do
  command "DIST=#{node['build']['dist']} /usr/sbin/pbuilder create"
  not_if { ::File.exists?("/var/cache/pbuilder/base.tgz")}
end
