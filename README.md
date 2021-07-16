# ClickHouse playground

This project is a `docker-compose` based playground to explore and learn `ClickHouse`' features.

It does not aim to replace the official documentation (https://clickhouse.tech/docs/en/) but, instead, to offer a learning path to get familiar with the most basic concepts.  
It does not include installation/setup instructions.

It assumes a basic knowledge of `SQL`.

- [ClickHouse playground](#clickhouse-playground)
  - [Requirements](#requirements)
  - [Versions](#versions)
  - [Installing the project](#installing-the-project)
  - [Working with the project](#working-with-the-project)
  - [Learning units](#learning-units)

## Requirements

- docker-compose
- make

**Important**: this has been only tested in Linux.

## Versions

This project starts containers with the following versions:

- ClickHouse 21.3.13.9 (Altinity Certified)
- Zookeeper 3.6.3
- MinIO 2021.6.17
- MariaDB 10.4.20
- Redis 6.2
- RabbitMQ 3.8.9

## Installing the project

Clone or download this repository and `cd` inside of it.  

## Working with the project

You will be asked to type (mostly copy and paste) things either in the terminal, either using `docker-compose`, `make` or, most of the times, inside ClickHouse after executing `make clickhouse`.

**IMPORTANT CONVENTION**: if a code snippet starts with `docker-compose` we expect it to be executed in a terminal inside the folder where the project sits. If the snippet is a SQL sentence, instead, we expect it to be launched after logging in ClickHouse (`make clickhouse`).

The most important operations are mapped to a `Makefile` recipe.

Typing simple `make` will print out the available recipes and their description.

The most basic ones are:

- `make up`: Starts all the containers required to develop this project
- `make down`: Shuts down all the containers and removes their volume
- `make clickhouse`: Log into one ClickHouse instance

These three you might need to remember since will be used frequently across this learning project.

## Learning units

All units are under the folder [learning-units](learning-units).

Units assume you have learned what explained in previous units, so it is recommended to follow them in order.
