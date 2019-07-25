package main

import "github.com/aws/aws-lambda-go/lambda"
import "github.com/aws/aws-lambda-go/events"

func handler() (events.APIGatewayProxyResponse, error) {
	return events.APIGatewayProxyResponse{
		StatusCode: 200,
		Body:       "Welcome to Serverless world!",
	}, nil
}

func main() {
	lambda.Start(handler)
}
