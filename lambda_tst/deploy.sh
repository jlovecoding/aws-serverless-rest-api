

zip lambda.zip lambda.py
aws --endpoint-url=http://localhost:4574 lambda create-function --function-name=f1 --runtime=python2.7 --role=r1 --handler=lambda.handler --zip-file fileb://lambda.zip

