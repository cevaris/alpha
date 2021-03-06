module Alpha
	
	class Config

		attr_accessor :config_data

		def initialize( path )
			@config_path = path

			load( )
			validate( )
	  end		

		def load
			@config_file = File.open( @config_path )
			@config_data = YAML::load( @config_file )
		end

		def validate
			raise ConfigNotValid unless @config_data
			raise NodeConfigNotFound unless @config_data.has_key? 'nodes'
		end

		def nodes
			raise NodeConfigNotFound unless @config_data.has_key? 'nodes'
			@config_data['nodes']
		end

	end
end