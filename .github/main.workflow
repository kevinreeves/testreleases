workflow "PHPCS Inspections" {
  resolves = ["Run phpcs inspection"]
  on = "push"
}

action "Run phpcs inspection" {
  uses = "rtCamp/rtCamp/action-phpcs-inspection@master"
  env = {
    DIFF_BASE="master"
  }
}

workflow "PHP Linting" {
  resolves = ["Execute"]
  on = "pull_request"
}

action "Execute" {
  uses = "michaelw90/php-lint@master"
}
