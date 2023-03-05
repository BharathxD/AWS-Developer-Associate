## Invoke function synchronously

<!-- aws lambda invoke --function-name MyTestFunction --payload BASE64-ENCODED-STRING response.json -->

aws lambda invoke --function-name MyTestFunction --payload ewogICJrZXkxIjogInZhbHVlMSIsCiAgImtleTIiOiAidmFsdWUyIiwKICAia2V5MyI6ICJ2YWx1ZTMiCn0= response.json

aws lambda invoke --function-name MyTestFunction out

{
    "StatusCode": 200,
    "ExecutedVersion": "$LATEST"
}

## Invoke function asynchronously

aws lambda invoke --function-name MyTestFunction --invocation-type Event --payload ewogICJrZXkxIjogInZhbHVlMSIsCiAgImtleTIiOiAidmFsdWUyIiwKICAia2V5MyI6ICJ2YWx1ZTMiCn0= response.json

aws lambda invoke --function-name MyTestFunction out

{
    "StatusCode": 202
}

