module Alpha


	class ConfigNotValid < Exception
	  def initialize(data='')
	    @data = data
	  end
	end
	
	class NodeConfigNotFound < Exception
	  def initialize(data='')
	    @data = data
	  end
	end

	
	
end