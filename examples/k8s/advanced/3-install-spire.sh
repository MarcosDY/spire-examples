#!/bin/bash
helm uninstall spire 2>/dev/null
while (kubectl get namespaces -o NAME | grep spire); do echo "Waiting for helm uninstall to complete"; sleep 1; done
helm install spire spire-chart
