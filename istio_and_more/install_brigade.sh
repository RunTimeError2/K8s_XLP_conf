#!/bin/sh
helm repo add brigade https://brigadecore.github.io/charts
helm install --generate-name brigade/brigade
