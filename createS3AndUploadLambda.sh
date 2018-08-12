


export AWS_DEFAULT_REGION=us-east-1
export S3Bucket=lambdas3
LAMBDA_DIR=./lambda

aws s3 mb s3://$S3Bucket
aws s3 cp $LAMBDA_DIR/lambda.zip s3://$S3Bucket/lambda.zip

