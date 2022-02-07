# Trigrams

A GraphQL API for querying the eight trigrams.

## Setup

```
bundle install
rails db:{create,migrate,seed}
```


## Tests

```
rails db:seed RAILS_ENV=test
bundle exec rspec
```

## Development

```
rails db:seed RAILS_ENV=production
rails s -p 3000
```

In your browser, go to:

```
http://localhost:3000/graphiql
```

Sample Query

```graphql
query fetchTrigram {
  trigram(id: 1) {
    id
    trigram
    binary
    element
  }
}
```

Sample response
```graphql
{
  "data": {
    "trigram": {
      "id": "1",
      "trigram": "☰",
      "binary": "111",
      "element": "Heaven/Firmament"
    }
  }
}
```

## Production

To use the GraphiQL Interface, go to:

```
https://graphql-trigrams.herokuapp.com/graphiql
```

Example curl:

```zsh
curl --request POST \
-H "Content-Type: application/json" \
-d '{"query":"query{trigram(id:5) {id trigram binary element}}"}' \
https://graphql-trigrams.herokuapp.com/graphql
```

Sample response:

```json
{"data":{"trigram":{"id":"5","trigram":"☴","binary":"011","element":"Wind"}}}
```
