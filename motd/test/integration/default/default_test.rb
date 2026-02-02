# Chef InSpec test for recipe motd::default

# The Chef InSpec reference, with examples and extensive documentation, can be
# found at https://docs.chef.io/inspec/resources/

describe file('/etc/motd') do
  it { should be_file }
  its('content') { should match /.+/ }
end