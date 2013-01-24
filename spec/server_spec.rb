require 'chefspec'

describe 'pacct-log::server' do
  before do
    log_host = [
      { "hostname" => "localhost" }
    ]

    @chef_run = ::ChefSpec::ChefRunner.new.converge "pacct-log::server"
    end

  it 'starts service' do
    @chef_run.should start_service "rsync"
  end

  it 'enables service' do
    @chef_run.should set_service_to_start_on_boot "rsync"
  end

  it 'includes default' do
    @chef_run.should include_recipe "pacct-log::default"
  end
end
