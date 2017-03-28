# Pivxer

Automate your [Pivx](http://pivx.org/) transactions with this Ruby interface to the `pivxer` JSON-RPC API.

## Connecting

Before connecting, you will need to configure a username and password for `bitcoind`, and start
`bitcoind`. Once that's done:

    client = Pivxer.new 'username', 'password'
      # => #<Pivxer::Client "http://username:password@localhost:51473" >

## Account Balances

You can get the balance of all addresses controlled by the client:

    client.balance
      # => 12.34

You can also get a hash of all accounts the client controls:

    client.accounts
      # => {"Your Address"=>#<Pivxer::Account "Your Address" >, "lunch with friends"=>#<Pivxer::Account "lunch with friends" >}

And of course each account has its own balance too:

    lunch = client.accounts['lunch with friends']
      # => #<Pivxer::Account "lunch with friends" >
    lunch.balance
      # => 2.19

## Transactions

You can get all the transactions in an account:

    lunch.transactions
      # => [#<Pivxer::Transaction abadbabe123deadbeef 2.19 to lunch with friends at 2011-02-19 16:21:09 -0500>]

You can send money from an account too:

    lunch.send_to 'destinationaddress', 2
      # => #<Pivxer::Account deadbeef888abadbeef UNCONFIRMED>

## Making Accounts

Creating an account with an associated address is done through the accounts interface:

    tiny_wings = client.accounts.new 'tiny wings'
      # => #<Pivxer::Account "tiny wings" >
    tiny_wings.address
      # => "1KV5khnHbbHF2nNQkk7Pe5nPndEj43U27r"

# Contributing

* [Fork the project on GitHub](https://github.com/craigwilliams/pivxer)
* Write tests for your changes locally
* Make the tests pass by implementing the changes
* Push your changes to GitHub.
* Send a pull request.

# Copyright

Copyright (c) 2011 Bryce Kerley. See LICENSE.txt for further details.
