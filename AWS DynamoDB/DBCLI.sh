# Import data
aws dynamodb batch-write-item --request-items file://mystore.json

#### SCANS ####

# Perform scan of ProductOrders table:
aws dynamodb scan --table-name mystore

# Use Max-Items Parameter:
aws dynamodb scan --table-name mystore --max-items 1