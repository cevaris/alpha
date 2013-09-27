require 'alpha'

describe Alpha::Runner do

	before :each do
		@command = Alpha::Create.new
	end
  
  it 'can access remote machine' do

  	@command = Alpha::Ping.new
  	@command.exec()


  end

end