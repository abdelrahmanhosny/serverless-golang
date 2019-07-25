GOOS=linux GOARCH=amd64 go build -o main main.go
zip deployment.zip main

aws lambda update-function-code --function-name InsertMovie \
    --zip-file fileb://./deployment.zip

rm main
rm deployment.zip

aws lambda update-function-configuration --function-name InsertMovie \
    --environment Variables={TABLE_NAME=movies}