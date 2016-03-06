FROM elixir:1.2.3

RUN mix local.hex --force
RUN mix local.rebar --force

RUN mkdir -p /ecto-demo

COPY mix.exs mix.lock /ecto-demo/
WORKDIR /ecto-demo
RUN mix deps.get

RUN MIX_ENV=test mix compile

COPY . /ecto-demo

CMD ["mix", "test"]
