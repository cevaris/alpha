module Alpha
	class Config

		CONFIG_PATH = 'config/config.yaml'

		attr_accessor :config_data

		def initialize( path=CONFIG_PATH )
			@config_path = path

			load( )
	  end		

		
		def load
			@config_file = File.open( @config_path )
			@config_data = YAML::load( @config_file )
		end

		def validate
			# raise ConfigNotFound, 'Configuration is nil', @config == nil
			raise 'ConfigNotFound'
		end

	end
end