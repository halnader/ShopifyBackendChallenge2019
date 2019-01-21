3 ways to interact with the api.

1. Using a GET request with no parameters, returns JSON object with all products with available inventory
2. Using a GET request with an item id, returns JSON object of product with matching id
3. Using a PUT request with an item id, "purchases" the item by decreasing inventory by 1

Built using Ruby on Rails 5.2.2
Database is Sqlite3 1.3.13

Used Faker to populate database with test data.
