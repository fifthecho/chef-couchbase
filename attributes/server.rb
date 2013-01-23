package_machine = node['kernel']['machine'] == "x86_64" ? "x86_64" : "x86"

default['couchbase']['server']['edition'] = "community"
default['couchbase']['server']['version'] = "2.0.0"

if platform_family?("debian")
	default['couchbase']['server']['package_file'] = "couchbase-server-#{node['couchbase']['server']['edition']}_#{package_machine}_#{node['couchbase']['server']['version']}.deb"
end

if platform_family?("rhel")
	default['couchbase']['server']['package_file'] = "couchbase-server-#{node['couchbase']['server']['edition']}_#{package_machine}_#{node['couchbase']['server']['version']}.rpm"
end

default['couchbase']['server']['package_base_url'] = "http://packages.couchbase.com/releases/#{node['couchbase']['server']['version']}"
default['couchbase']['server']['package_full_url'] = "#{node['couchbase']['server']['package_base_url']}/#{node['couchbase']['server']['package_file']}"

default['couchbase']['server']['database_path'] = "/opt/couchbase/var/lib/couchbase/data"
default['couchbase']['server']['log_dir'] = "/opt/couchbase/var/lib/couchbase/logs"

default['couchbase']['server']['username'] = "Administrator"
default['couchbase']['server']['password'] = ""

default['couchbase']['server']['memory_quota_mb'] = Couchbase::MaxMemoryQuotaCalculator.from_node(node).in_megabytes
