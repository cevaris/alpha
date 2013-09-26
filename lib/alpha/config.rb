module Alpha
	class Config

		def load (path)
			@config_path = path
			@config_file = File.open( @config_path )
			@config_data = YAML::load( @config_file )
		end
	end
end