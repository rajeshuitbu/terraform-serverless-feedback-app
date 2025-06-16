const AWS = require('aws-sdk');
const dynamo = new AWS.DynamoDB.DocumentClient();

exports.handler = async (event) => {
  try {
    const body = JSON.parse(event.body);

    const feedback = {
      id: Date.now().toString(), // unique ID
      name: body.name,
      feedback: body.feedback,
      timestamp: new Date().toISOString()
    };

    await dynamo.put({
      TableName: process.env.DYNAMODB_TABLE,
      Item: feedback
    }).promise();

    return {
      statusCode: 200,
      body: JSON.stringify({ message: "Feedback submitted successfully", data: feedback }),
      headers: {
        "Content-Type": "application/json"
      }
    };

  } catch (error) {
    console.error("Error saving feedback:", error);
    return {
      statusCode: 500,
      body: JSON.stringify({ error: "Could not save feedback" }),
      headers: {
        "Content-Type": "application/json"
      }
    };
  }
};

