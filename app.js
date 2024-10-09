exports.handler = async (event) => {
  console.log("Hello, OpenTelemetry tracing!");

  const response = {
    statusCode: 200,
    body: JSON.stringify({ message: "Hello, OpenTelemetry!" }),
  };

  return response;
};
