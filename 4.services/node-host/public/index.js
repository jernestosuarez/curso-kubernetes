var express = require('express');
var os = require('os')
var app = express();

function format(seconds){
  function pad(s){
    return (s < 10 ? '0' : '') + s;
  }
  var hours = Math.floor(seconds / (60*60));
  var minutes = Math.floor(seconds % (60*60) / 60);
  var seconds = Math.floor(seconds % 60);
  var result = "";
  if (hours > 0) {result = pad(hours)+ ' hours'}
  if (minutes > 0) {result = result + pad(minutes)+ ' minutes '}
  result = result + pad(seconds)+ ' seconds';
  return result;
}

app.get('/', function (req, res) {
	var uptime = process.uptime();
 	res.send("Hello from "+os.hostname()+" I born "+format(uptime)+" ago!");
});

var server = app.listen(3000, function () {
	var host = server.address().address;
	var port = server.address().port;
	console.log('Programa de ejemplo escuchando en http://%s:%s',host,port);
});