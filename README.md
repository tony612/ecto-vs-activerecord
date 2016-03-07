# Ecto vs ActiveRecord

***via code***

The examples come from http://edgeguides.rubyonrails.org/active_record_querying.html

You can find test cases for Ecto in `./ecto_demo/test/ecto_demo_test.exs`

### 1 Retrieving Objects from the Database

#### 1.1 Retrieving a Single Object

* find

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

> Oh, yes. Rails guide says you can use a method retrieving a single object to fetch multiple objects.*

```ruby
# AR
client = Client.find([1, 10]) # or Client.find(1, 10)
```

## Contributing

1. Find an example in the Rails guide link
2. Figure out how to do that in Ecto
3. Write a test and let it pass
4. Add it to README.md

Feel free to open issues or send PR.:muscle:
