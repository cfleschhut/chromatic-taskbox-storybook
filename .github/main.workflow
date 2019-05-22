workflow "Run visual regression tests" {
  on = "push"
  resolves = ["test"]
}

action "test" {
  uses = "actions/npm@master"
  args = "chromatic"
}
