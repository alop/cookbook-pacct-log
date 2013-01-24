require 'chefspec'

describe 'pacct-log::client' do
  before do
    log_host = [
      { "hostname" => "localhost" }
    ]

    @chef_run = ::ChefSpec::ChefRunner.new.converge "pacct-log::client"
    end

  it 'includes default' do
    @chef_run.should include_recipe "pacct-log::default"
  end
end
