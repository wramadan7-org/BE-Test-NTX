const db = require("../models");
// const Model = db.Model;
// const { Op } = require("sequelize");
const { WebSocket } = require("ws");
const dotenv = require("dotenv").config();
const axios = require("axios");
const { connectRedis } = require("../config/redis");

const { HOST, PORT } = process.env;

exports.refactoreMe1 = (req, res) => {
  // function ini sebenarnya adalah hasil survey dri beberapa pertnayaan, yang mana nilai dri jawaban tsb akan di store pada array seperti yang ada di dataset
  db.sequelize
    .query(`SELECT * FROM "surveys"`)
    .then((data) => {
      const resultValues = [];

      data[0].map((e, indexData) => {
        const calculateValues = e.values?.reduce((a, b) => a + b, 0) / 10;

        resultValues.push(calculateValues);
      });

      res.status(200).send({
        statusCode: 200,
        success: true,
        message: "Surveys get successfully!",
        data: resultValues,
      });
    })
    .catch((err) => {
      console.error(err);
      res.status(500).send({
        statusCode: 500,
        success: false,
        message: "Can't get data surveys",
      });
    });
};

exports.refactoreMe2 = async (req, res) => {
  // function ini untuk menjalakan query sql insert dan mengupdate field "dosurvey" yang ada di table user menjadi true, jika melihat data yang di berikan, salah satu usernnya memiliki dosurvey dengan data false
  const { userId, values } = req.body;
  try {
    await db.sequelize.query(
      `INSERT INTO "surveys" ("userId", "values", "createdAt", "updatedAt") VALUES (${userId}, '{${values}}', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP)`
    );

    await db.sequelize.query(
      `UPDATE users SET dosurvey = false WHERE id = ${userId}`
    );

    res.status(201).send({
      statusCode: 201,
      success: true,
      message: "Survey sent successfully!",
      data: {
        userId,
        values,
      },
    });
  } catch (error) {
    console.error(error);
    res.status(500).send({
      statusCode: 500,
      success: false,
      message: "Cannot post survey.",
    });
  }
};

exports.callmeWebSocket = async (req, res) => {
  // do something
  const api = "https://livethreatmap.radware.com/api/map/attacks?limit=10";

  const socket = new WebSocket(`ws://${HOST}:${PORT}`);

  const client = await connectRedis();
  const checkKey = await client.get("attackers");

  if (checkKey) {
    await client.del("attackers")
    await client.quit();
  }

  await socket.addEventListener("open", (event) => {
    console.log("Connecting to server");

    const fetch = axios
      .get(api)
      .then((data) => {
        // socket.send berfungsi untuk mengirim data dari klient ke server
        socket.send(JSON.stringify(data.data));
      })
      .catch((error) => {
        console.error(error);
      });
  });

  // socket.addEventListener('message') berfungsi untuk menerima data dari server untuk klien
  // socket.addEventListener('message', (message) => {
  //   console.log('Menerima pesan dari server', message);
  // });

  await socket.addEventListener("close", () => {
    console.log("Client close");
  });
};

exports.getData = async (req, res) => {
  // do something
  try {
    const client = await connectRedis();
    const checkKey = await client.get("attackers");
    let attackers;

    if (!checkKey) {
      console.log("GET FROM DB");
      attackers = await db.sequelize.query(`SELECT 
        type,
        SUM("destinationCountryCount" + "sourceCountryCount")::integer as "totalData"
        FROM (
            SELECT 
                a.id, 
                obj->>'type' AS type, 
                COUNT(DISTINCT obj->>'destinationCountry')::integer as "destinationCountryCount", 
                COUNT(DISTINCT obj->>'sourceCountry')::integer as "sourceCountryCount"
            FROM attackers a
            CROSS JOIN jsonb_array_elements(a.values) AS obj
            GROUP BY type, a.id
        ) AS subquery
        GROUP BY type
        `);

      await client.set("attackers", JSON.stringify(attackers));
    } else {
      console.log("GET FROM REDIS");
      attackers = JSON.parse(checkKey);
    }

    const label = [];
    const total = [];

    const refactorData = attackers[0]?.forEach((item) => {
      label.push(item.type);
      total.push(item.totalData);
    });

    client.quit();

    res.status(200).send({
      statusCode: 200,
      success: true,
      message: "Attackers get successfully!",
      data: {
        label,
        total,
      },
    });
  } catch (error) {
    console.error(error);
    res.status(500).send({
      statusCode: 500,
      success: false,
      message: "Cannot get attackers.",
    });
  }
};
