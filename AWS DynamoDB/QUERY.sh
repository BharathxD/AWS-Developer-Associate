#### QUERIES ####

# Use Key-Conditions Parameter:
aws dynamodb query  --table-name mystore --key-conditions '{ "clientid":{ "ComparisonOperator":"EQ", "AttributeValueList": [ {"S": "chris@example.com"} ] } }'

