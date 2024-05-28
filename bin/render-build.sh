#!/usr/bin/env bash
# exit on error
set -o errexit

bundle install
bundle exec rails assets:precompile
bundle exec rails assets:clean
# Note: DB use decommissioned for demo deployment. Reenable if restoring db use.
# bundle exec rails db:migrate

# if you have seeds to run add:
# bundle exec rails db:seed
