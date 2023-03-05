## Invoke Lambda versions

# Invoking latest function

aws lambda invoke --function-name TestFunction:\$LATEST response.json

# Invoking a particular function

aws lambda invoke --function-name TestFunction:1 response.json

## Invoke Lambda alias

aws lambda invoke --function-name TestFunction:myapp response.json
