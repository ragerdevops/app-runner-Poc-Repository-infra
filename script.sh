#!/bin/bash
while [ "$(aws apprunner --region=eu-west-1 list-connections --query "ConnectionSummaryList[?ConnectionName=='github'].Status" --output text)" != "AVAILABLE" ]; do
    echo "Esperando a que la conexión esté disponible..."
	current_status=$(aws apprunner --region=eu-west-1 list-connections --query "ConnectionSummaryList[?ConnectionName=='github'].Status" --output text)
	echo "Valor actual: $current_status"
    sleep 10
done
echo "¡La conexión está disponible ahora!"

