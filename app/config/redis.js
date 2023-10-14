const redis = require("redis");

const connectRedis = async () => {
  try {
    const client = await redis
      .createClient()
      .on("error", (err) => {
        // console.log("Redis Client Error", err)
        throw new Error(`Redis client error: ${err}`);
      })
      .connect();
  
    client.on("ready", () => {
      console.log("Redis ready");
    });

    return client;
  } catch (error) {
    throw error;
  }
};

module.exports = { connectRedis };
