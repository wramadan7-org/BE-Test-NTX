const exampleMiddleware = require("./exampleMiddleware");

module.exports = {
  exampleMiddleware: exampleMiddleware.exampleMiddlewareFunction,
  admin: exampleMiddleware.adminRoleValidation,
  user: exampleMiddleware.userRoleValidation,
  public: exampleMiddleware.publicRoleValidation,
};
