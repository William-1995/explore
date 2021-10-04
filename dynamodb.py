import boto3
if __name__ == "__main__":
    client = boto3.client('dynamodb',endpoint_url='http://localhost:4566',aws_access_key_id='localstack',
                      aws_secret_access_key='localstack')
    response = client.list_tables()
    print(response)