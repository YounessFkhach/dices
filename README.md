# README

A dice rolling system, implemented on RubyOnRails using Graphql

## Create the app

1. clone the repo
2. build and create the db

```sh
docker-compose build
docker-compose run --rm web rails db:create
docker-compose run --rm web rails db:migrate
```

## Run the app

1. start the server

```sh
# to run
docker-compose up
# to stop
docker-compose down
```
2. Test on GraphiQL

go to http://localhost:3000/graphiql to get to the playground web view

## Run the tests

```sh
docker-compose run --rm web rails test
```

## example queryies and mutations

```graphql
# Roll '2d6+1d12' formula with an advantage
mutation Dices {
  roll(input: { dices: "2de+1d12", advantage: advantage }) {
    total
    dices {
      nodes {
        dice
        value
        isAdvantage
      }
    }
  }
}

# query the rolls
query Rolls {
  rolls(first: 10) {
    totalCount
    pageInfo {
      hasNextPage
      endCursor
    }
    edges {
      node {
        id
        total
        dices {
          totalCount
          nodes {
            value
            dice
            isAdvantage
          }
        }
      }
    }
  }
}

# query a roll by ID
query Roll {
  roll(id: 32) {
    id
    total
    dices {
      nodes {
        value
        dice
      }
    }
  }
}

```
