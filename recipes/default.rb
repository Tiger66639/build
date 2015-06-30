include_recipe 'apt'
%w(autogen git rsync tree pbuilder debootstrap devscripts s3cmd unzip zip).each do |i|
  package i
end

include_recipe 'apt::apthttps-client'
