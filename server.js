var device = require("iotivity-node")(), light;

device.configure({role: "server"});

device.registerResource({
	id: { path: "/a/light" },
	resourceTypes: [ "core.light" ],
	interfaces: [ "oic.if.baseline" ],
	discoverable: true,
	properties: { on: false}
}).then(function(resource) {
	console.log("server: register OK");
	light = resource;
	device.addEventListener("request", onRequest);
});

function onRequest(request) {
	console.log("server: request " + request.type);
	if (request.type == "retrieve")
		request.sendResponse(light);
	else if (request.type == "update") {
		light.properties.on = request.res.on;
		request.sendResponse(light);
	}
}
