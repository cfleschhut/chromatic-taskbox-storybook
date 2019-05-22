workflow "Run visual regression tests" {
  on = "push"
  resolves = ["test"]
}

action "test" {
  uses = "actions/npm@59b64a598378f31e49cb76f27d6f3312b582f680"
  args = "chromatic"
}
