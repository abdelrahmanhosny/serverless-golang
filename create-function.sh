aws lambda create-function --function-name [NAME] \
    --description "[Put some description here]"
    --runtime go1.x \
    --role [IAM Role] \
    --handler main \
    --environment Variables={NAME=VALUE} \
    --zip-file fileb://./deployment.zip \
    --region [us-east-2]
    --timeout 3 \
    --memory-size 128