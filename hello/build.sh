GOOS=linux GOARCH=amd64 go build -o main main.go
zip deployment.zip main
rm main
aws lambda update-function-code --function-name HelloServerless \
    --zip-file fileb://./deployment.zip
rm deployment.zip