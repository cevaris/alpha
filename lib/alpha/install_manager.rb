module Alpha
	
	class InstallManager

		UBUNTU = :ubuntu
		CENTOS = :centos
		
		def exec( config )
			@config = config
		end

	end
	
end