#!/bin/bash

func_name=getText
GCLOUD_PROJECT=`gcloud config get-value project`
OCR_IN_BUCKET="${GCLOUD_PROJECT}__ocr-in"
time gcloud functions deploy $func_name --trigger-resource $OCR_IN_BUCKET --trigger-event google.storage.object.finalize --retry
