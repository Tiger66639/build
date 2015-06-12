%w(autogen git rsync tree pbuilder debootstrap devscripts s3cmd).each do |i|
  package i
end

execute "pbuilder" do
  command "export DIST=#{node['build']['dist']} /usr/sbin/pbuilder create"
  not_if { ::File.exists?("/var/cache/pbuilder/base.tgz")}
end
