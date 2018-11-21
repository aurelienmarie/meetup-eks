#!/bin/bash
sed -s '$a---' guest/*.yaml | kubectl apply -f -
