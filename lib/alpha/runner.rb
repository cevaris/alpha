
module Alpha

	require 'socket'
	require 'timeout'

	
	class Runner

		def self.config_path
			'test/config/config.yaml'
		end

		attr_accessor :config

		def initialize
			@config = Config.new self.config_path
	  end		

	  def execute_on_node( ip_address, command )
	  	# p "ssh root@#{ip_address} #{command} #{port_open?(ip_address,22)}"

	  	if port_open?(ip_address, 22)
	  		IO.popen("ssh root@#{ip_address} #{command}") do |f|
			    until f.eof?
			      p f.gets
			    end
			  end
			else
				raise NodeHeartbeatNotFound, "Heartbeat not found for #{ip_address}"
	  	end

	  end

	  def port_open?( ip, port )
	  	
			begin
		    Timeout::timeout(1) do
		      begin
		        s = TCPSocket.new(ip, port)
		        s.close
		        return true
		      rescue Errno::ECONNREFUSED, Errno::EHOSTUNREACH
		        return false
		      end
		    end
		  rescue Timeout::Error
		  end
		  return false

	  end

	  
	end # Runner






	class Ping < Runner

		def initialize
			@runner = Runner.new
	  end		

	  def exec
	  	@runner.config.nodes.each do |node|
	  		self.execute_on_node node['ip_address'], 'ls -l /'
	  	end
	  end
	  
	end # Ping







	class Create < Runner

		def initialize
			@runner = Runner.new
	  end		

	  def exec
	  end

	  def execute_on_node
	  end

	  def test_connection( node )

	  end

	end # Create
	
end