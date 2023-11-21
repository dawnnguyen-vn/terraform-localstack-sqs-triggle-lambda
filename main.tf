provider "aws" {
    region                      = "us-east-1"
    access_key                  = "123"
    secret_key                  = "qwe"
    skip_requesting_account_id  = true
    skip_credentials_validation = true
    endpoints {
        lambda       = "http://awslocal:4566"
        sqs          = "http://awslocal:4566"
        iam          = "http://awslocal:4566"
    }
}
