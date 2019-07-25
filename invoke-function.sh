# aws lambda invoke --function-name FindAllMovies result.json
aws lambda invoke --function-name InsertMovie --payload file://data/input.json data/result.json