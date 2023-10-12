const db = require("../models");
// const model = db.model;

exampleMiddlewareFunction = (req, res, next) => {
  // do something
  console.log("Middleware");
  next();
};

const verify = {
  exampleMiddlewareFunction: this.exampleMiddlewareFunction,
};

module.exports = verify;
