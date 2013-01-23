package_machine = node['kernel']['machine'] == "x86_64" ? "x86_64" : "x86"

default['couchbase']['server']['edition'] = "community"
default['couchbase']['server']['version'] = "2.0.0"

default['couchbase']['server']['database_path'] = "/opt/couchbase/var/lib/couchbase/data"
default['couchbase']['server']['log_dir'] = "/opt/couchbase/var/lib/couchbase/logs"

default['couchbase']['server']['username'] = "Administrator"
default['couchbase']['server']['password'] = ""

default['couchbase']['server']['memory_quota_mb'] = Couchbase::MaxMemoryQuotaCalculator.from_node(node).in_megabytes
