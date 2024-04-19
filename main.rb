require 'webrick'

server = WEBrick::HTTPServer.new(
  DocumentRoot: './',
  BindAddress: '0.0.0.0',
  Port: 8000
)

ser.mount_prock('/') dp |req, res|
  res.body = 'Hello, World!'
end

server.start
