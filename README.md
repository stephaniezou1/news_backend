## Ruby on Rails API
* Ruby on Rails API for the Hegelian Bagel backend.
* This API consists of 3 domain models with `has_many` and `belongs_to` associations.
* Pulls in news articles from [News API](https://newsapi.org).
* Built by [Isabel K. Lee](https://www.kleetime.com) and [Stephanie Zou](https://github.com/stephaniezou1).

## Getting Started

To get started, you will only need Ruby on Rails and Postgres. To do so, you must have Homebrew and Ruby installed first.

### Node installation on OS X

In your terminal...

1. Install [Homebrew](https://brew.sh/)

    ```$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"```
  
2. Install [Ruby](https://www.ruby-lang.org/en/)
    
    ```$ brew install ruby```

3. Install [Rails](https://rubyonrails.org/)

    ```$ gem install rails```

4. Install [PostgreSQL](https://www.postgresql.org/)

    ```$ brew install postgresql```


## Installation

1. Clone the repo and cd into the folder
2. Bundle Install

    ```$ bundle install```
    
3. Create migrations, migrate and seed:

    ```$ rails db:create
       $ rails db:migrate
       $ rails db:seed```
       
       
## Launch The Server

1. Last step, launch the rails server!
    ```$ rails s```
    
    ### Start developing!


## Tools

* [Rack CORS](https://github.com/cyu/rack-cors): description
* [ActiveModel::Serializer](https://github.com/rails-api/active_model_serializers): description
* [News API](https://newsapi.org)

## Live demo
Coming soon!
