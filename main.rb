require 'webrick'

server = WEBrick::HTTPServer.new(
  DocumentRoot: './',
  BindAddress: '0.0.0.0',
  Port: 8000
)

server.mount_prock('/') do |req, res|
  res.body = 'Hello, World!'
end

server.start
