aws lambda add-permission --function-name "arn:aws:lambda:us-east-2:025383945292:function:FindAllMovies:Production" \
    --source-arn "arn:aws:execute-api:us-east-2:025383945292:2wz8n5trrb/*/GET/movies" \
    --principal apigateway.amazonaws.com \
    --statement-id STATEMENT_ID \
    --action lambda:InvokeFunction

aws lambda add-permission --function-name "arn:aws:lambda:us-east-2:025383945292:function:FindAllMovies:Staging" \
    --source-arn "arn:aws:execute-api:us-east-2:025383945292:2wz8n5trrb/*/GET/movies" \
    --principal apigateway.amazonaws.com \
    --statement-id STATEMENT_ID \
    --action lambda:InvokeFunction