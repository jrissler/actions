# GitHub Action for npm

This Action for [npm](https://www.npmjs.com) enables arbitrary actions with this `npm` command-line client.

Includes a local install of PostgreSQL.

## Usage

An example workflow to run `npm test` is as follows:

```hcl
workflow "Run tests" {
  on = "push"
  resolves = "Test"
}

action "Test" {
  uses = "mrleeio/actions/nodejs/latest@master"
  args = "test"
}
```

Note that by default, `$MIX_ENV` is set to "dev", so for running tests, you'll want to set it to "test".