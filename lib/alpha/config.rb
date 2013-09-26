module Alpha
	class Config

		def load (path)
			@config_path = path
			@config_file = File.open( @config_path )
			@config_data = YAML::parse( @config_file )
			p @config_data[:database]
		end
	end
end