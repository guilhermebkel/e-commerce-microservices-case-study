<!-- <p align="center">
	<img src="./assets/icon_example.png" height="150" width="150" alt="icon example" />
</p>	 -->

<h3 align="center">
 A deep study about microservices architecture by the example of an e-commerce application 💍
</h3>

## 📌 Overview

That's a simple SaaS E-Commerce platform example, to make a study about microservices.

## 🎆 Case Study

- The client can subscribe to have its own store in minutes
- All the platform will be multi tenant, so, it will not be duplicated to every customer. Every customer will see only its own data
- The customer will have a temporary domain and will be able to specify a main domain when the store goes up
- The customer will have a admin panel to manage its products
- The customer will be able to see the requested products
- By default the store will use **pagar.me** as the payment gateway, but the system will be able to accept another gateways
- The store will have a search area
- The store will have a custom logo
- The store will not have a customer area, neither an authentication area, only a checkout area

## 🔧 Technologies

- Golang
- Docker
- Django
- Celery
- Redis
- SQLite
- Nest.js
- Node.js
- Loopback
- ElasticSearch
- Serverless
- RabbitMQ
- Buffalo
- API Gateway
- Lambda
- Python
- Kubernetes

## 🧿 Microservices
- [Signatures **(Golang / Buffalo)**](https://github.com/codeedu/maratonafc3p-microsservico-assinaturas)
  - Landing Page
  - Plans
  - Signature Process
  - In case the signature is made with success, its info is sent to a store manage microservice

- [Payments **(Serverless / API Gateway / Golang)**](https://github.com/codeedu/maratonafc3-microsservico-pagamentos)
  - Process all payments and persists the data on a database
  - Single payment transactions
  - Signature creation transactions

- [Administrator **(Python / Django / Celery / Redis)**](https://github.com/codeedu/maratonafc3-repo-main/tree/master/commerce-admin)
  - Make the multi tenant environment
  - Admin area
  - Send the created/updated products to a queue

- [Store **(Nest.js / Node.js / Loopback / ElasticSearch)**](https://github.com/codeedu/maratonafc3-repo-main/tree/master/commerce-shop)
  - Sync the received products by administrator microservice on the ElasticSearch
  - Use the payment microservice in a sync way
  - The created purchases are sent to a queue

## 🗿 Monolithics vs Microservices
### Monolithics
That's a single application, with different contexts running in the same application.

The **good points** are:
- Since everything is coupled, it is easier to deal with communication between contexts.

The **pain points** are:
- If a context goes down, everything goes down (Per ex: if you have lot of access on the Checkout module and I goes down, every other module will probably go down as well);
- The more your team grows, the more complex it becomes to manage how they maintain the system, since they're able to change a context of another team;
- If you have to scale some context, you've to duplicate all system and scale everything together.

### Microservices
They are divided in product contexts (so it is recommended to implement them if you have business issues, not technical issues), not in modules. Some examples of contexts that a product can have: Marketing, Law, Selling.

It is recommended to have a single database per microservice (in order to keep it decoupled as you can).

The microservice must have a fallback rule, it must be written to fail and to deal with fail (without making another microservice fail if there's communication between them)

The **good points** are:
- If some context goes down, the others stay up;
- A team can manage its own context without accessing another;
- You can scale a unique context;
- You have specialized teams by contexts;
- You can use different technologies by contexts.

The **pain points** are:
- Since everything is not coupled, you've to deal with distributed communication.

## 📨 Distributed Message Queue System

That's generally a queue which you can use to put some messages inside it and read some messages from it as well. Usually you have the following stuff working around it:

- **Publisher:** is able to put/create messages on the queue.
- **Consumer:** is able to get/read messages from the queue.
- **Queue:** is able to store messages inside it for some time till some service reads or deletes the message from it.
- **Dead Letter Queue:** is able to retain the message that has not been processed after some attempts.
- **Direct Exchange:** is able to send a message direct to a single queue consumer that is listening to it.
- **Fanout Exchange:** is able to send a message for all the consumers that are listening to a queue.