var SerialPort = require("serialport");
var args = process.argv.slice(2);

var options = {
    port: "/dev/ttyUSB0",
    help: false,
    verbose: false,
    length: 16,
};

const usage = "usage: node index.js [options]\n" +
"options: \n" +
"  -h, --help \n" +
"  -v, --verbose \n" +
"  -p, --port <name>\n" +
"  -l, --length \n";

for (var i = 0; i < args.length; i++) {
    var arg = args[i];

    switch(arg) {
        case '-h':
        case '--help':
            options.help = true;
            break;
        case '-v':
        case '--verbose':
            options.verbose = true;
            break;
        case '-l':
        case '--length':
            var num = args[i + 1];
            if (typeof num == 'undefined') {
                console.log(usage);
                process.exit(0);
            }
            options.length = parseInt(num);
            break;
        case '-p':
        case '--port':
            var port = args[i + 1];
            if (typeof port == 'undefined') {
                console.log(usage);
                process.exit(0);
            }
            options.port = port;
            break;
    }
}

var port = new SerialPort(options.port, {
    baudRate: 115200,
    parity: 'none',
    dataBits: 8,
    stopBits: 1,
    parser: SerialPort.parsers.raw
  });

var txBuffer = Buffer.alloc(options.length);
var rxBuffer = Buffer.alloc(0);

port.on('open', portOpen);
port.on('data', portData);
port.on('close', portClose);
port.on('error', portError);

function portWrite(err) {
    if (err)
        console.log("err: " + err.message);
}

function portOpen(err) {
    if (err) {
        console.log("open: " + err.message);
        return;
    }
    console.log("TX: %d bytes", txBuffer.length);
    port.write(txBuffer, portWrite);
}

function portData(data) {
    console.log("RX: %d bytes", data.length);
    rxBuffer = Buffer.concat([rxBuffer, data]);
    if (rxBuffer.length == txBuffer.length)
        process.exit(0);
}

function portClose(err) {
    console.log("close");
}

function portError(err) {
    console.log("error: " + err.message);
}

function main()
{

}

main();
