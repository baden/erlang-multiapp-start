# main_app

Заготовка для приложения, состоящего из нескольких компонентов.

Собирать можно как с помощью rebar3, так и erlang.mk.


# Сборка для отладки

## Rebar3

    $ ./rebar3 compile

## Erlang.mk

    $ make

Что-то не работает `make app`. Зато просто `make` - собирает.

# Сборка для продакшена

## Rebar3

    $ ./rebar3 as prod tar

## Erlang.mk

    $ make
    
Что-то не работает `make rel`. Зато просто `make` - собирает.


# Запуск тестов 


## Rebar3

    $ ./rebar3 ct eunit
    $ ./rebar3 cover

## Erlang.mk

    $ make tests
    
TODO: Что-то и логи каждый в своем подкаталоге и покрытие не видно

# Запуск приложения в консольном режиме

## Rebar3

    $ ./rebar3 shell

## Erlang.mk

    $ make run
