require 'webrick'
require 'launchy'
server = WEBrick::HTTPServer.new :Port => 7000
server.mount "/", WEBrick::HTTPServlet::FileHandler, './'
trap('INT') { server.stop }
Launchy.open("http://localhost:7000")
server.start
