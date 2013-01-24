require 'chefspec'

describe 'cookbook-pacct-log::server' do
  let (:chef_run) { ChefSpec::ChefRunner.new.converge 'cookbook-pacct-log::server' }
  it 'should do something' do
    pending 'Your recipe examples go here.'
  end
end
