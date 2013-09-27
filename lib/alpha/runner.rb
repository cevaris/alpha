
module Alpha

	require 'socket'
	require 'timeout'

	
	class Runner

		CONFIG_PATH = 'config/config.yaml'

		attr_accessor :config

		def initialize
			@config = Config.new CONFIG_PATH
	  end		

	  def execute_on_node( node, command )
	  	p "ssh root@#{node} #{command} #{port_open?(node,22)}"
	  end
	  
	end # Runner






	class Ping < Runner

		def initialize
			@runner = Runner.new
	  end		

	  def exec
	  	@runner.config.nodes.each do |node|
	  		self.execute_on_node node['ip_address'], 'ls -l'
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