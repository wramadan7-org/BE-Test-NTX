const db = require("../models");
const { verifyJwt, signInJwt } = require("../helper/jwt");
const roleType = require("../config/role");
// const model = db.model;

exampleMiddlewareFunction = (req, res, next) => {
  // do something
  try {
    const { authorization } = req.headers;

    if (!authorization) {
      return res.status(401).send({
        statusCode: 401,
        success: false,
        message: "Unauthorization"
      });
    };
    
    const splitHeader = authorization.split(" ");
    const validBearer = splitHeader[0] === "Bearer" ? true : false;

    if (!validBearer) {
      return res.status(401).send({
        statusCode: 401,
        success: false,
        message: "Bearer token is required for authentication.",
      });
    }

    const verify = verifyJwt(splitHeader[1]?.length ? splitHeader[1] : "");
    // console.log(verify)
    req.user = verify;
    next();
  } catch (error) {
    res.status(500).send({
      statusCode: 500,
      success: false,
      message: error?.message,
    });
  }
};

adminRoleValidation = (req, res, next) => {
  try {
    const { role } = req.user;

    if (role !== roleType.admin) {
      return res.status(403).send({
        statusCode: 403,
        success: false,
        message: "Forbidden access",
      })
    }

    next()
  } catch (error) {
    res.status(500).send({
      statusCode: 500,
      success: false,
      message: error?.message
    })
  }
};

userRoleValidation = (req, res, next) => {
  try {
    const { role } = req.user;

    if (role !== roleType.user) {
      return res.status(403).send({
        statusCode: 403,
        success: false,
        message: "Forbidden access",
      })
    }

    next()
  } catch (error) {
    res.status(500).send({
      statusCode: 500,
      success: false,
      message: error?.message
    })
  }
};

publicRoleValidation = (req, res, next) => {
  try {
    const { role } = req.user;

    if (role !== roleType.public) {
      return res.status(403).send({
        statusCode: 403,
        success: false,
        message: "Forbidden access",
      })
    }

    next()
  } catch (error) {
    res.status(500).send({
      statusCode: 500,
      success: false,
      message: error?.message
    })
  }
};

const verify = {
  exampleMiddlewareFunction: exampleMiddlewareFunction,
  adminRoleValidation: adminRoleValidation,
  userRoleValidation: userRoleValidation,
  publicRoleValidation: publicRoleValidation,
};

module.exports = verify;
