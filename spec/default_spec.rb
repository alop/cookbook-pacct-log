require 'chefspec'

describe 'cookbook-pacct-log::default' do
  let (:chef_run) { ChefSpec::ChefRunner.new.converge 'cookbook-pacct-log::default' }
  it 'installs package' do
    @chef_run.should upgrade_package "rsync"
  end
end
