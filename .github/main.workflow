workflow "Run visual regression tests" {
  on = "push"
  resolves = ["chromatic"]
}

action "build-storybook" {
  uses = "actions/npm@master"
  args = "build-storybook"
}

action "chromatic" {
  uses = "actions/npm@master"
  args = "chromatic"
  needs = ["build-storybook"]
}
