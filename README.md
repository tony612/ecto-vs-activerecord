# Ecto vs ActiveRecord

***via code***

The examples come from http://edgeguides.rubyonrails.org/active_record_querying.html

You can find test cases for Ecto in `./ecto_demo/test/ecto_demo_test.exs`

### 1 Retrieving Objects from the Database

#### 1.1 Retrieving a Single Object

> find

single object

```elixir
# Ecto
client = Repo.get_by(Client, id: id)
```

```ruby
# AR
client = Client.find(10)
```

multiple objects

```elixir
# Ecto
query = from c in Client, where: c.id in ^ids
clients = Repo.all(query)
```

```ruby
# AR
client = Client.find([1, 10]) # or Client.find(1, 10)
```

> take

first one

```elixir
# Ecto
query = from c in Client, limit: 1
client = Repo.one(query)
```

```ruby
# AR
client = Client.take
```

first n

```elixir
# Ecto
query = from c in Client, limit: 2
clients = Repo.all(query)
```

```ruby
# AR
client = Client.take(2)
```

## Contributing

1. Find an example in the Rails guide link
2. Figure out how to do that in Ecto
3. Write a test and let it pass
4. Add it to README.md

Feel free to open issues or send PR.:muscle:
