const express = require("express");
const { createServer } = require("http");
const bodyParser = require("body-parser");
const cors = require("cors");
const dotenv = require("dotenv");
dotenv.config();
const app = express();
const server = require("http").createServer(app);
const WebSocket = require("ws");
const redis = require("redis");
const { callmeWebSocket } = require("./app/controllers/exampleController");
const { connectRedis } = require("./app/config/redis");

const corsOptions = {
  origin: ["http://localhost:8080"],
};

app.use(cors(corsOptions));

// parse requests of content-type - application/json
app.use(bodyParser.json());

// parse requests of content-type - application/x-www-form-urlencoded
app.use(bodyParser.urlencoded({ extended: true }));

// database
const db = require("./app/models");

db.sequelize.sync();

// never enable the code below in production
// force: true will drop the table if it already exists
// db.sequelize.sync({ force: true }).then(() => {
//   console.log("Drop and Resync Database with { force: true }");
//   // initial();
// });

// simple route
app.get("/", (req, res) => {
  res.json({ message: "Hello" });
});

// routes
require("./app/routes/exampleRoutes")(app);

// implement websocket
const wss = new WebSocket.Server({ server });

wss.on("connection", (ws) => {
  console.log("New client connected");
  // ws.send digunakan untuk mengirim data dari server ke klien
  // ws.send("Mengirim pesan dari server ke klien");

  // ws.on("message') berfungsi untuk menerima data/pesan dari klien
  // kita juga bisa mengirim pesan balasan ke klien dengan menggunakan ws.send didalam ws.on('message')
  ws.on("message", (event) => {
    console.log(`Receive message from client: ${event}`);
  });

  ws.on("close", () => {
    console.log("Server close");
  });
});

// connection redis
const connecingRedis = connectRedis().then(() => console.log("Redis connect successfully"));

const interval = 3 * 60 * 1000;

setInterval(callmeWebSocket, interval);

// set port, listen for requests
const PORT = process.env.PORT || 7878;
server.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}.`);
});
