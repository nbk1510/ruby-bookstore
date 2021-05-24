#!/bin/bash
bundle check || bundle install

if [ -f tmp/pids/server.pid ]; then
  rm tmp/pids/server.pid
fi

bin/rake db:create
bin/rake db:migrate
bin/rake db:seed

# -d, Daemonize process
# -L, path to writable logfile
# -C, path to YAML config file
# -e, Application environment
# -q, queues type order
# bundle exec sidekiq -d -q default -q mailers #-e production

bundle exec rails s -p 3000 -b '0.0.0.0'
