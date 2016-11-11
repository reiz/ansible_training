require 'spec_helper'

describe package('nginx'), :if => os[:family] == 'ubuntu' do
  it { should be_installed }
end

describe port(80) do
  it { should be_listening }
end
