# GitHub Action for Mix - Phoenix v1.4.9

This Action for [Mix](https://hexdocs.pm/mix/Mix.html) enables arbitrary actions with this `mix` command-line client.

Includes a local install of PostgreSQL and NodeJS for running unit tests against Phoenix applications.

## Usage

An example workflow to run `mix test` is as follows:

```hcl
workflow "Run tests" {
  on = "push"
  resolves = "Test"
}

action "Test" {
  uses = "mrleeio/actions/phoenix_framework/1.8.1@master"
  args = "test"
  env = {
    MIX_ENV = "test"
  }
}
```

Note that by default, `$MIX_ENV` is set to "dev", so for running tests, you'll want to set it to "test".