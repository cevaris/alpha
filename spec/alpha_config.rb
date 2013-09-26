require 'alpha'

describe Alpha::Create do

	before :each do 
		@path = 'config/config.yaml'
		@config = Alpha::Config.new
	end
  
  it 'cannot find config file did not throw error' do
    
  	path = 'invalid/config/file.yaml'
  	expect { @config.load path }.to raise_error

  end

  it 'cannot read config file' do
    # path = 'config/config.yaml'
    config_data = @config.load @path
    config_data.should_not eq( nil )
  end

end