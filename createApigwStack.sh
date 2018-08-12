
STACK_TEMPLATE=stack_template.json

aws cloudformation create-stack --stack-name apigateway --template-body file://${STACK_TEMPLATE} --capabilities CAPABILITY_IAM --parameters ParameterKey=S3Bucket,ParameterValue=$S3Bucket

aws cloudformation wait stack-create-complete --stack-name apigateway

aws cloudformation describe-stacks --stack-name apigateway --query Stacks[0].Outputs

export endpoint="$ApiId.execute-api.us-east-1.amazonaws.com/v1"

