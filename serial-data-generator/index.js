var SerialPort = require("serialport");
var args = process.argv.slice(2);

var options = {
    port: "/dev/ttyUSB0",
    help: false,
    verbose: false,
    len: 16,
    count: 1,
    txLen: 0
};

const usage = "usage: node index.js [options]\n" +
"options: \n" +
"  -h, --help \n" +
"  -v, --verbose \n" +
"  -p, --port <name>, serial port name\n" +
"  -l, --len <number>, lenght of packet to sent to peer\n" +
"  -c, --count <number>, number of packets to send\n" +
"  -t, --tx-len <number>, request packet size from peer\n" ;

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
        case '--len':
            var num = args[i + 1];
            if (typeof num == 'undefined') {
                console.log(usage);
                process.exit(0);
            }
            options.len = parseInt(num);
            break;
        case '-c':
        case '--count':
            var num = args[i + 1];
            if (typeof num == 'undefined') {
                console.log(usage);
                process.exit(0);
            }
            options.count = parseInt(num);
            break;
        case '-t':
        case '--tx-len':
            var num = args[i + 1];
            if (typeof num == 'undefined') {
                console.log(usage);
                process.exit(0);
            }
            options.txLen = parseInt(num);
            break;
        case '-p':
        case '--port':
            var str = args[i + 1];
            if (typeof str == 'undefined') {
                console.log(usage);
                process.exit(0);
            }
            options.port = str;
            break;
    }
}

if (options.help) {
    console.log(usage);
    process.exit(0);
}

var port = new SerialPort(options.port, {
    baudRate: 115200,
    parity: 'none',
    dataBits: 8,
    stopBits: 1,
    parser: SerialPort.parsers.raw
  });

var txBuffer = Buffer.alloc(options.len);
var rxBuffer = Buffer.alloc(0);
var fillBuffer = Buffer.alloc(options.txLen);

if (options.txLen) {
    txBuffer.writeUInt16BE(options.txLen, 0);

    var value = 0;
    for (var i = 0; i < options.txLen; i++) {
        fillBuffer.writeUInt8(value, i);
        if (value == 255)
            value = 0;
        else
            value++;
    }
}

if (options.verbose) {
    console.log(txBuffer);
    console.log(fillBuffer);
}

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
    console.log("TX: %d bytes x %d", txBuffer.length, options.count);
    for (var i = 0; i < options.count; i++)
        port.write(txBuffer, portWrite);
}

function portData(data) {
    console.log("RX: %d bytes", data.length);
    rxBuffer = Buffer.concat([rxBuffer, data]);
    if (options.txLen == 0) {
        if (rxBuffer.length == (txBuffer.length * options.count)) {
            console.log("TX == RX");
            process.exit(0);
        }
    }
    else {
        if (rxBuffer.length == options.txLen) {
            if (rxBuffer.compare(fillBuffer) == 0)
                console.log("TX == RX");
            else
                console.log("TX != RX");
            if (options.verbose)
                console.log(rxBuffer);

            process.exit(0);
        }
    }

}

function portClose(err) {
    console.log("close");
}

function portError(err) {
    console.log("error: " + err.message);
}
