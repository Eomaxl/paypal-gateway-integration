# paypal-gateway-integration

A spring boot based application that has paypal payment gateway integration using maven and Java 17.
This applications shows you how to create a payment order and execute it. Based upon the payment process, success/ error page is being shown.
To run this application, clone this repository and initialize maven clean install.

API Endpoints exposed are:

POST Request:
/payment/create

GET Request:
/payment/success
/payment/cancel
/payment/error


Application URL:
localhost:8080/

<img width="1508" alt="Screenshot 2024-04-01 at 2 47 06 PM" src="https://github.com/Eomaxl/paypal-gateway-integration/assets/24840226/62f6f172-b8dd-4984-bf70-8db9741905a1">



Docker image url :
[eomaxl/payment_system:paypal-integration-1.0.0.jar](https://hub.docker.com/repository/docker/eomaxl/payment_system/general)
