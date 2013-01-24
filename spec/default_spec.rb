require 'chefspec'

describe 'pacct-log::default' do
  before do
    @chef_run = ::ChefSpec::ChefRunner.new.converge "pacct-log::default"
    end

  it 'installs package' do
    @chef_run.should upgrade_package "rsync"
  end
end
