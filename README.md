# AWS Solutions Architect
AWS scripts, apps and documents.


## AWS Rekognition App
A serverless application built on AWS to practice Serverless Architecture concepts.

#### Architecture Design
![Achitecture Design](https://lh3.googleusercontent.com/pw/ACtC-3eR5_JuvOoeOzzWQtvwktMB0H2Q_cerEVaDyxNDs7PILpchuzyMNTt1r_ypmcUeaHeT-AtqsmjDErGBmNhoYSHVFpq18RODhZqgLcFIh2u7SFl6n0TYSWohK9zLw0RsI3xZkX3xHcy1T2I80iecsGw=w1541-h914-no?authuser=0)

#### Services used for the App:
* Amazon Cognito
* Amazon S3
* Amazon Simple Queue Service
* AWS Lambda
* Amazon DynamoDB
* Amazon Rekognition
* AWS Cloud Development Kit
* Amazon API Gateway
* AWS CodeBuild
* AWS CodePipeline

### Useful commands

 * `npm install`     install packages
 * `cdk synth`       emits the synthesized CloudFormation template
 * `cdk deploy`      deploy this stack
 * `cdk diff`        compare deployed stack with current state

 The `cdk.json` file tells the CDK Toolkit how to execute your app.

### Prerequisites

All CDK developers need to install Node.js 10.3.0 or later, even those working in languages other than TypeScript or JavaScript. The AWS CDK Toolkit (cdk command-line tool) and the AWS Construct Library run on Node.js. The bindings for other supported languages use this back end and tool set. We suggest the latest LTS version.

```bash
aws configure
npm -g install typescript
npm install -g aws-cdk
```
If you have not yet done so, you will also need to bootstrap your account:

```bash
cdk bootstrap aws://ACCOUNT-NUMBER-1/REGION-1
```

for example:

```bash
cdk bootstrap aws://123456789012/us-east-1
```


For further information see:

https://docs.aws.amazon.com/cdk/latest/guide/getting_started.html

https://docs.aws.amazon.com/cdk/latest/guide/bootstrapping.html

### Getting Started

1. `npm install` 

2. `cdk deploy`

A 'cdk deploy' will deploy everything that you need into your account

3. You may now test the backend by uploading an image into your Amazon S3 bucket. 

### Cleanup

To clean up the resources created by the CDK, run the following commands:
```bash
aws s3 rm --recursive s3://{imageBucket}
cdk destroy
```
(Enter “y” in response to: Are you sure you want to delete (y/n)?).

### Tweaks

Rekognition confidence is currently set in the rekognition lambda. 
```python
minConfidence = 50
```  
