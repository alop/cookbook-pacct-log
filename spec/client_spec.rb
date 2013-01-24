require 'chefspec'

describe 'cookbook-pacct-log::client' do
  let (:chef_run) { ChefSpec::ChefRunner.new.converge 'cookbook-pacct-log::client' }
  it 'should do something' do
    pending 'Your recipe examples go here.'
  end
end
