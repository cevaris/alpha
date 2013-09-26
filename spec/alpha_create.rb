require 'alpha'
require 'alpha/create'

describe Alpha::Create do
  
  it "create command does something " do
    command = Alpha::Create.new
    p command.exec()
    command.exec() != nil
  end

end