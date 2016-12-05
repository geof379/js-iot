var device = require("iotivity-node")();

device.configure({role: "client"});

var msg "JS rocks";

var args = process.argv.slice(2);
args.forEach(function(entry) {
    msg = entry;
});


device.on("resourcefound", function(event) {
 	console.log("client: resource found: %s", event.resource.id.path);

 	if (event.resource.id.path == "/a/chat") {
 		device.retrieveResource(event.resource.id)
 		.then(function(resource) {
 			console.log("client: retrieve %s: %s", resource.id.path, JSON.stringify(resource.properties));
			resource.properties.message = msg; // set
 			resource.properties.name = "iotivity-node"; // set
 			device.updateResource(resource).then(function() {
 				console.log("client: update OK");
 				process.exit(0);
 			});
 		});
 	}
});

device.findResources();


