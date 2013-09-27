require 'alpha'

describe Alpha::Create do

	CONFIG_PATH = 'config/config.yaml'
	INVALID_CONFIG_PATH = 'config/invalid-config.yaml'
	
	before :each do 
		@config = Alpha::Config.new CONFIG_PATH
	end
  
  it 'cannot find config file did not throw error' do
  	path = 'invalid/config/file.yaml'
  	expect { Alpha::Config.new path }.to raise_error
  end

  it 'cannot parse config file' do
    @config.config_data.should_not eq( nil )
  end

  it 'did not raise error with empty config' do
  	@config = Alpha::Config.new INVALID_CONFIG_PATH
  	expect { @config.validate }.to raise_error
  end

end