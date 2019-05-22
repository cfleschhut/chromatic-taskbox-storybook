workflow "Run visual regression tests" {
  on = "push"
  resolves = [
    "chromatic",
    "install",
  ]
}

action "chromatic" {
  uses = "actions/npm@master"
  args = "chromatic"
  needs = [
    "install",
  ]
}

action "install" {
  uses = "actions/npm@master"
  args = "install"
}
