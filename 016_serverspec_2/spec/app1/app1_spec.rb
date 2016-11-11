require 'spec_helper'

describe package('openjdk-8-jdk'), :if => os[:family] == 'ubuntu' do
  it { should be_installed }
end

describe package('git'), :if => os[:family] == 'ubuntu' do
  it { should be_installed }
end

describe file('/etc/passwd') do
  it { should exist }
end

describe command('git --version') do
  its(:stdout) { should contain('git version 2.7') }
end
