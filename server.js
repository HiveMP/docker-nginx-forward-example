// Source: https://github.com/einaros/ws

var WebSocketServer = require('ws').Server
  , wss = new WebSocketServer({ port: 8080 });

console.log('starting server...');

wss.on('connection', function connection(ws) {
  console.log('received connection');
  ws.on('message', function incoming(message) {
    console.log('received: %s', message);
  });
});