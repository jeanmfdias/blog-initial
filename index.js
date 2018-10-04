const Server = require('./src/configs/server');

Server.app.listen(Server.port, () => console.log('Running at port 3000'));