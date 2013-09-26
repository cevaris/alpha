require 'alpha'

describe Alpha::Create do
  
  it "create command does something " do
    command = Alpha::Create.new
    command.exec() != nil
  end

end