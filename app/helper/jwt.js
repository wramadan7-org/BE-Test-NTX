const jwt = require("jsonwebtoken");
const { secret } = require("../config/auth");

const verifyJwt = (token) => {
  try {
    const verify = jwt.verify(token, secret);
    return verify;
  } catch (error) {
    throw new Error(`Catch error verify JWT: ${error}`);
  }
};

const signInJwt = (data) => {
  try {
    const signIn = jwt.sign(data, secret);
    return signIn;
  } catch (error) {
    throw new Error(`Catch error signIn JWT: ${error}`);
  }
};

module.exports = {
  verifyJwt,
  signInJwt,
};
