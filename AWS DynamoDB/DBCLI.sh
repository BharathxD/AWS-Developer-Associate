# Import data
aws dynamodb batch-write-item --request-items file://mystore.json

#### SCANS ####

# Perform scan of ProductOrders table:
aws dynamodb scan --table-name mystore

# Use Max-Items Parameter:
aws dynamodb scan --table-name mystore --max-items 1

# Use Projection-Expression Parameter:
aws dynamodb scan --table-name mystore --projection-expression "created"
aws dynamodb scan --table-name mystore --projection-expression "category"
aws dynamodb scan --table-name mystore --projection-expression "colour"