#!/usr/bin/env node
import 'source-map-support/register';
import * as cdk from '@aws-cdk/core';
import { RekognitionAppStack } from '../lib/rekognition-app-stack';

const app = new cdk.App();
new RekognitionAppStack(app, 'RekognitionAppStack');
