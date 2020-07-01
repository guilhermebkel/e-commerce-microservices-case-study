'use strict';

module.exports.sum = async event => {
  const { a, b } = event.queryStringParameters

  return {
    statusCode: 200,
    body: JSON.stringify(
      {
        resultado: (+a) + (+b)
      },
      null,
      2
    ),
  };
};
