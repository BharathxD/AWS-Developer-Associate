## AWS SQS CLI Commands

aws sqs list-queues

aws sqs send-message --queue-url https://sqs.ap-south-1.amazonaws.com/059535961489/Standard-Queue --message-body test-message-1

aws sqs send-message --queue-url https://sqs.ap-south-1.amazonaws.com/059535961489/Standard-Queue --message-body test-message-1 --delay-seconds 10

# 0 = Short Polling

aws sqs receive-message --queue-url https://sqs.ap-south-1.amazonaws.com/059535961489/Standard-Queue --wait-time-seconds 10

aws sqs send-message --queue-url QUEUE-URL --message-body test-long-short-polling