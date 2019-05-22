workflow "Run visual regression tests" {
  on = "push"
  resolves = ["install"]
}

action "install" {
  uses = "actions/npm@master"
  args = "install"
}

action "chromatic" {
  needs = ["install"]
  uses = "actions/npm@master"
  args = "run chromatic"
}
