#!/bin/bash
sed -s '$a---' custom-scheduler/*.yaml | kubectl apply -f -
