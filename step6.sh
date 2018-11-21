#!/bin/bash
sed -s '$a---' guest/*.yaml | kubectl delete -f -
