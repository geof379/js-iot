/* API:
 * /api/led
 * /api/led?on
 * /api/led?off
 * 
 * E.g., wget http://localhost:8080/api/led?on
 *
 * Author: sakari.poussa@intel.com
 */

var http = require('http');
var gpio = require('gpio');
var PORT = 8080;
var PIN = 13;

function handleRequest(req, res) {
	console.log('handleRequest: ' + req.method + " " + req.url);

	var url = req.url.split('?');
	var path = url[0];
	var result = {error: false, value: 0};

	if (path == "/api/led") {
		if (url[1] == "on") {
			gpio.writePin(PIN, true, function(err) {
				if (err != null) {
					result.error = true;
				}
				else {
					result.value = true;
				}
				res.end(JSON.stringify(result));
			});
		}
		else if (url[1] == "off") {
			gpio.writePin(PIN, false, function(err) {
				if (err != null) {
					result.error = true;
				}
				else {
					result.value = false;
				}
				res.end(JSON.stringify(result));
			});
		}
		else {
			gpio.readPin(PIN, function(err, value) {
				if (err != null) {
					result.error = true;
				}
				else {
					result.value = value;
				}
				res.end(JSON.stringify(result));
			});
		}
	}
}

gpio.initialize();

gpio.on('initialize', function() {
	console.log("Event: initialize");
	gpio.setPin(PIN, "out"); // led
})

gpio.on('setPin', function(pin, direction) {
	console.log('Event: setPin ' + pin + " " + direction);
})

gpio.on('writePin', function(pin, value) {
	console.log('Event: writePin ' + pin + " " + value);
})

gpio.on('readPin', function(pin, value) {
	console.log('Event: readPin ' + pin + " " + value);
})

gpio.on('error', function(e) {
	console.log("Event: error = " + e.message);
})

var server = http.createServer(handleRequest);

server.listen(PORT, function() {
	console.log('IoT.js http server on port: ' + PORT);
});