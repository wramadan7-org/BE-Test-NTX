const db = require('../models');
// const Model = db.Model;
// const { Op } = require("sequelize");

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
        data: resultValues,
      });
    })
    .catch((err) => {
      console.error(err);
      res.status(500).send({
        statusCode: 500,
        message: "Can't get data surveys",
        success: false,
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

    await db.sequelize
      .query(`UPDATE users SET dosurvey = false WHERE id = ${userId}`)

    res.status(201).send({
      statusCode: 201,
      message: 'Survey sent successfully!',
      success: true,
      data: {
        userId,
        values
      },
    });
  } catch (error) {
    console.error(error);
    res.status(500).send({
      statusCode: 500,
      message: 'Cannot post survey.',
      success: false,
    });
  }
  // db.sequelize
  //   .query(
  //     `INSERT INTO "surveys" ("userId", "values", "createdAt", "updatedAt") VALUES (${userId}, '{${values}}', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP)`
  //   )
  //   .then((data) => {
  //     db.sequelize
  //       .query(`UPDATE users SET dosurvey = false WHERE id = ${userId}`)
  //       .then(() => {
  //         console.log('Success');
  //       })
  //       .catch((err) => {
  //         console.error(err);
  //       });
  //     res.status(201).send({
  //       statusCode: 201,
  //       message: 'Survey sent successfully!',
  //       success: true,
  //       data,
  //     });
  //   })
  //   .catch((err) => {
  //     console.error(err);
  //     res.status(500).send({
  //       statusCode: 500,
  //       message: 'Cannot post survey.',
  //       success: false,
  //     });
  //   });
};

exports.callmeWebSocket = (req, res) => {
  // do something
};

exports.getData = (req, res) => {
  // do something
};
