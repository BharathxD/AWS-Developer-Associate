## Create Lambda function from zip file

zip function.zip index.js


aws lambda create-function --function-name EventSourceSQS --zip-file fileb://function.zip --handler index.handler --runtime nodejs16.x --role arn:aws:iam::821711655051:role/my-sqs-role

