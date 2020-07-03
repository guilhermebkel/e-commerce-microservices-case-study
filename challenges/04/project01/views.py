from rest_framework import viewsets
from rest_framework.response import Response
from rest_framework import status
from rest_framework.decorators import api_view

# api_view
@api_view(['GET'])
def maratona(request):
	if request.method == 'GET':
		return Response([
			{
				"id": 1,
				"aula": "Full Cycle e Estudo de caso"
			},
			{
				"id": 2,
				"aula": "Microsserviço de assinaturas com RabbitMQ e Golang Buffalo"
			},
			{
				"id": 3,
				"aula": "Serverless framework e processamento de pagamentos"
			},
			{
				"id": 4,
				"aula": "Multi-tenancy applications com Django"
			},
			{
				"id": 5,
				"aula": "Ecommerce com Nest.js, Loopback e ElasticSearch"
			},
			{
				"id": 6,
				"aula": "Microsserviços em produção com Docker e Kubernetes"
			}
		])