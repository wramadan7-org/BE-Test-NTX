const { exampleMiddleware } = require("../middleware");
const exampleController = require("../controllers/exampleController");

module.exports = (app) => {
  app.use((req, res, next) => {
    res.header(
      "Access-Control-Allow-Headers",
      "x-access-token, Origin, Content-Type, Accept"
    );
    next();
  });

  const router = require("express").Router();

  router.get(
    "/refactor1",
    [exampleMiddleware.exampleMiddlewareFunction],
    exampleController.refactoreMe1
  );

  router.post(
    "/refactor2",
    // [exampleMiddleware.exampleMiddleware],
    exampleController.refactoreMe2
  );

  router.get(
    "/attacker",
    [exampleMiddleware.exampleMiddlewareFunction],
    exampleController.getData
  )

  app.use("/api/data", router);
};
