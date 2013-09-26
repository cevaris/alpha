require 'alpha'

describe Alpha::Create do
  
  it 'cannot find config file' do
    config = Alpha::Config.new
    path = 'config/config.yaml'
    config.load path
  end

end