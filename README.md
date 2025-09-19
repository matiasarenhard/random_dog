# Random Dog
This simple project fetches and renders an image from Dog CEO’s API. (No authentication required)

## Requirements
```
Ruby: 3.4.4
Rails: 8.0.2
```

## Build Steps
```
bundle install 
bin/rails db:create db:migrate
bin/rails assets:precompile
bin/rails s
```

<img width="3369" height="1284" alt="image" src="https://github.com/user-attachments/assets/749f5008-6c4b-4220-b06a-cdcf81cf1563" />


## Tests
```
bin/rails db:create db:migrate RAILS_ENV=test
bin/rails test
```

<img width="536" height="224" alt="image" src="https://github.com/user-attachments/assets/a7f64ac2-af8a-4371-99c6-82b8f1940221" />
