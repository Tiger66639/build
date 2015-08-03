include_recipe "build"

%w( docker docker-engine ).each do |p|
  package p
end
