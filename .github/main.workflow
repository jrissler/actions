workflow "Docker workflow" {
  on = "push"
  resolves = ["Build Elixir v1.8.1"]
}

action "Build Elixir v1.8.1" {
  uses = "actions/docker/cli@8cdf801b322af5f369e00d85e9cf3a7122f49108"
  args = "build elixir/1.8.1/"
}
