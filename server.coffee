# Dependencies
express = require 'express'
app = express()
server = require('http').createServer app
io = require('socket.io').listen server

# App configuration
app.use express.static "#{__dirname}/public"

# Routes
app.get '/', (req, res) -> res.sendfile 'index.html'

# Start App on Port 3000
server.listen(3000)
console.log 'Express app started on port 3000'

# Listen for Socket.io connection
io.sockets.on 'connection', (socket) -> socket.emit 'connected', 'Connection Completed'
