require 'alpha'

describe Alpha::Runner do

	before :each do
		@command = Alpha::Create.new
	end
  
  it 'can access remote machine' do
  	@command = Alpha::Ping.new
  	@command.exec()
  end

  it 'can not ping valid machines' do
  	@command = Alpha::Ping.new
  end

end