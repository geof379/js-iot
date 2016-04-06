var device = require("iotivity-node")();

device.configure({role: "client"});

device.on("resourcefound", function(event) {
 	console.log("client: resource found %s", event.resource.id.path);

 	if (event.resource.id.path == "/a/light") {
 		device.retrieveResource(event.resource.id)
 		.then(function(resource) {
 			console.log("client: retrieve %s: %s", resource.id.path, JSON.stringify(resource.properties));
			resource.properties.on = !resource.properties.on; // toggle
 			device.updateResource(resource).then(function() {
 				console.log("client: update OK");
 				process.exit(0);
 			});
 		});
 	}
});

device.findResources();


