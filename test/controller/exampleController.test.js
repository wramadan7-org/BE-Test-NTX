const db = require("../../app/models");
const { getData } = require("../../app/controllers/exampleController");
const { connectRedis } = require("../../app/config/redis");

jest.mock("../../app/config/redis");
jest.mock("../../app/controllers/exampleController");

describe('getData', () => {
  test('it should fetch data from the database and cache it in Redis if Redis cache is empty', async () => {
    // Mock the behavior of connectRedis
    connectRedis.mockResolvedValue({
      get: jest.fn(), // Redis cache is empty
      set: jest.fn(),
      quit: jest.fn(),
    });

    const req = {};
    const res = {
      status: jest.fn().mockReturnThis(),
      send: jest.fn(),
    };

    const response = await getData(req, res);
    console.log("RESPONSE", response)

    // expect(res.status).toHaveBeenCalledWith(200);
    expect(res.send).toHaveBeenCalledWith({
      statusCode: 200,
      success: true,
      message: 'Attackers get successfully!',
      data: {
        label: ['type1', 'type2'],
        total: [10, 20],
      },
    });
  });

  // test('it should fetch data from Redis if Redis cache is available', async () => {
  //   // Mock the behavior of connectRedis
  //   connectRedis.mockResolvedValue({
  //     get: jest.fn().mockResolvedValue(JSON.stringify({ label: ['type1', 'type2'], total: [10, 20] })), // Redis cache is available
  //     quit: jest.fn(),
  //   });

  //   const req = {};
  //   const res = {
  //     status: jest.fn().mockReturnThis(),
  //     send: jest.fn(),
  //   };

  //   await getData(req, res);

  //   expect(res.status).toHaveBeenCalledWith(200);
  //   expect(res.send).toHaveBeenCalledWith({
  //     statusCode: 200,
  //     success: true,
  //     message: 'Attackers get successfully!',
  //     data: {
  //       label: ['type1', 'type2'],
  //       total: [10, 20],
  //     },
  //   });
  // });

  // test('it should handle errors gracefully', async () => {
  //   // Mock the behavior of connectRedis to simulate a Redis connection error
  //   connectRedis.mockRejectedValue(new Error('Redis connection error'));

  //   const req = {};
  //   const res = {
  //     status: jest.fn().mockReturnThis(),
  //     send: jest.fn(),
  //   };

  //   await getData(req, res);

  //   expect(res.status).toHaveBeenCalledWith(500);
  //   expect(res.send).toHaveBeenCalledWith({
  //     statusCode: 500,
  //     success: false,
  //     message: 'Cannot get attackers.',
  //   });
  // });
});
