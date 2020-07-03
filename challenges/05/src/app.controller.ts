import { Controller, Get } from '@nestjs/common';
import { AppService } from './app.service';

@Controller()
export class AppController {
  constructor(private readonly appService: AppService) {}

  @Get("/maratona")
  getClasses(): Array<{ id: number, aula: string }> {
    return [
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
		]
  }
}
