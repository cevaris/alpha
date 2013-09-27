module Alpha


	class ConfigNotFound < Exception
	  def initialize(data)
	    @data = data
	  end
	end
	
	class RemoteServerConfigNotFound < Exception
	  def initialize(data)
	    @data = data
	  end
	end

	class RemoteServerNotFound< Exception
	  def initialize(data)
	    @data = data
	  end
	end
	
end