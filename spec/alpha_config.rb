require 'alpha'

describe Alpha::Create do
	before :each do 
		@path = Alpha::Config::CONFIG_PATH
		@config = Alpha::Config.new
	end
  
  it 'cannot find config file did not throw error' do
  	path = 'invalid/config/file.yaml'
  	expect { Alpha::Config.new path }.to raise_error
  end

  it 'cannot parse config file' do
    @config.config_data.should_not eq( nil )
  end

  it 'did not raise ConfigNotFound' do
  	expect { @config.validate }.to raise_error
    
  end

end