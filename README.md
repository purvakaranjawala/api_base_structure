# Rails Api Only App + Devise + devise-jwt + jsonapi-serializer

## To run APIs using curl
### signup
```ruby
curl -XPOST -H 'Content-Type: application/json' http://localhost:4000/api/v1/signup -d '{"user": {"email": "myemail3@gmail.com", "password": "password", "password_confirmation": "password", "name": "jany" }}'
```

### login
```ruby
curl -XPOST -H 'Content-Type: application/json' http://localhost:4000/api/v1/login -d '{"user": {"email": "myemail3@gmail.com", "password": "password" }}'```
```

### logout 
```ruby
curl --location --request DELETE 'http://localhost:4000/api/v1/logout' \
--header 'Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJqdGkiOiI2ZDkxY2MxNC02ODI0LTQzNjItOGUyMi03ZjE0YzhjOWI1NGMiLCJzdWIiOiIyIiwic2NwIjoidXNlciIsImF1ZCI6bnVsbCwiaWF0IjoxNjg4MDIyMzI3LCJleHAiOjE2ODgwMjQxMjd9.ZvLnZ5PAjVzv5LkMmk7YwoC-C5XRnK_2dV14xWnQj3Q' \
--data-raw ''
```
> Authorization token can be received from the response Headers of login request.

## Test in Postman
Registration create
![create](<Screenshot from 2023-06-29 12-59-38.png>)

Login
![login](<Screenshot from 2023-06-29 12-59-59.png>) 

Logout
![logout](<Screenshot from 2023-06-29 13-00-24.png>)


References:
1. https://sdrmike.medium.com/rails-7-api-only-app-with-devise-and-jwt-for-authentication-1397211fb97c
2. http://rubykiwi.com/untitled-4/

Follow if using > gem 'jwt' and gem 'bcrypt'
   https://www.bluebash.co/blog/rails-6-7-api-authentication-with-jwt/
# api_base_structure
