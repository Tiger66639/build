include_recipe "apt"
%w(autogen git rsync tree s3cmd python-setuptools rubygems ruby1.8-dev python-dev).each do |i|
  package i
end

execute "bundler" do
  command "gem install bundler"
end
