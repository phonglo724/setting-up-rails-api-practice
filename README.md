# README

Setting up Rails API

1. In your terminal, run:
```
rails new setting-up-rails-api --api
```
2. Then, in your terminal, run:
```
cd setting-up-rails-api
```
3. Next, uncomment the following in your gemfile:
```
gem 'rack-cors'
```
4. Then, go to your cors file and uncomment the following and change 'example.com' to '*':
```
Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins '*'

    resource '*',
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head]
  end
end
```
5. In your terminal, run:
```
bundle install
```
6. Create your models, migrations, controllers, and routes file with:
```
rails g resource Bachelorette first_name:string last_name:string
```
7. In your terminal, run:
```
rails db:migrate
```
8. Open your schema.rb file and you will see that the file now displays your data structure.
9. Create your RESTful API methods by defining index, show, create, update, and destroy actions. Go to your bachelorettes_controller.rb file to create your methods.
10. Next, create your routes for index, show, create, update, and destroy actions. We need to set this up for all of the actions we have defined in our controller. Go to your routes.rb file and add in:
```
resources :bachelorettes, only: [:index, :show, :create, :update, :destroy]
```
11. Create your seed data
12. After creating your data, run in your terminal:
```
rails db:seed
```
13. Check to see if seeded data was done correctly by running:
```
rails c
```
14. Test out: Bachelorette.all / Bachelorette.first / Bachelorette.first.first_name / Bachelorette.first.last_name
15. Fire up your server:
```
rails s
```
16. Open up Postman and test API functionality