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
  resolves = ["Run phplink inspection"]
  on = "push"
}

action "Run phplink inspection" {
  uses = "michaelw90/php-lint@master"
}
