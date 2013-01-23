name             "couchbase"
maintainer       "getaroom, fifthecho"
maintainer_email "devteam@roomvaluesteam.com, jmoody@datapipe.com"
license          "MIT"
description      "Installs/Configures Couchbase"
long_description IO.read(File.join(File.dirname(__FILE__), "README.md"))
version          "1.0.1"

supports "debian"
supports "ubuntu"
supports "centos"
supports "redhat"
supports "fedora"
supports "scientific"
supports "amazon"

recipe "couchbase::server", "Installs couchbase-server"
recipe "couchbase::client", "Installs libcouchbase"
