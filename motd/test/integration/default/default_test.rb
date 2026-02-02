# Chef InSpec test for recipe motd::default

# The Chef InSpec reference, with examples and extensive documentation, can be
# found at https://docs.chef.io/inspec/resources/

describe file('/etc/motd') do
  it { should be_file }
  its('content') { should match /.+/ }
end

describe file('/etc/profile.d/motd.sh') do
  it { should be_file }
  # its('content') { should match /cat \/etc\/motd/ }
end

describe command('bash -c "source /etc/profile.d/motd.sh && motd"') do
  its('stdout') { should match /.+/ }
end