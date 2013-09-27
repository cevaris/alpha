require 'alpha'

describe Alpha::Config do

	INVALID_CONFIG_PATH = 'config/invalid-config.yaml'
	
	before :each do 
		@config = Alpha::Config.new Alpha::Runner.config_path
	end
  
  it 'cannot find config file did not throw error' do
  	path = 'invalid/config/file.yaml'
  	expect { Alpha::Config.new path }.to raise_error
  end

  it 'cannot parse config file' do
    @config.config_data.should_not eq( nil )
  end

end