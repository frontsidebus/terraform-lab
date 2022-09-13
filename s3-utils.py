#!/usr/bin/env


import sys

from sys import argv

import boto3
import json


script, input_encoding, s3_payload = sys.argv

s3 = boto3.resource('s3')

data = open(s3_payload, 'r')
s3.Bucket('').put_object(Key=s3_payload, Body=data)

print(f"{response}")